/**
 * \file abstract_resource_list_model.cpp
 * \author Anthony Demange <tinou@tinou.fr>
 * \brief The AbstractResource list model class.
 */

#include "abstract_resource_list_model.hpp"

#include "url_resource.hpp"
#include "ebook_resource.hpp"

#include "string_tools.hpp"
#include "abstract_category.hpp"
#include "abstract_resource.hpp"

void AbstractResourceListModel::prepareResourceAddition(AbstractResourceListModel* model, QString path)
{
	boost::shared_ptr<AbstractResource> resource;

	QUrl url = QUrl::fromUserInput(path);

	if (url.host() != "")
	{
		resource.reset(new UrlResource());
	}
	else
	{
		resource.reset(new EbookResource());
	}

	resource->setTitle(QFileInfo(url.path()).fileName());
	resource->setLocation(url.toString());

	model->addResource(resource);
}

AbstractResourceListModel::AbstractResourceListModel(QObject *parent) :
	QAbstractListModel(parent)
{
}

int AbstractResourceListModel::rowCount(const QModelIndex &parent) const
{
	Q_UNUSED(parent);

	if (d_category)
	{
		return d_category->resourceList().count();
	}
	else
	{
		return 0;
	}
}

int AbstractResourceListModel::columnCount(const QModelIndex &parent) const
{
	Q_UNUSED(parent);

	return 4;
}

QVariant AbstractResourceListModel::data(const QModelIndex &index, int role) const
{
	if (!index.isValid())
	{
		return QVariant();
	}

	if (index.row() >= d_category->resourceList().size())
	{
		return QVariant();
	}

	if (role == Qt::DisplayRole || role == Qt::EditRole)
	{
		switch(index.column())
		{
			case 0:
				return d_category->resourceList().at(index.row())->title();
				break;
			case 1:
				return d_category->resourceList().at(index.row())->author();
				break;
			case 2:
				return qStringListToQString(d_category->resourceList().at(index.row())->tagList());
				break;
			case 3:
				return d_category->resourceList().at(index.row())->location();
				break;
		}
	}

	return QVariant();
}

Qt::ItemFlags AbstractResourceListModel::flags(const QModelIndex &index) const
{
	if (!index.isValid())
	{
		return Qt::ItemIsEnabled;
	}

	return QAbstractItemModel::flags(index) | Qt::ItemIsEditable;
}

bool AbstractResourceListModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
	if (index.isValid() && role == Qt::EditRole)
	{
		switch(index.column())
		{
			case 0:
				d_category->resourceList().at(index.row())->setTitle(value.toString());
				break;
			case 1:
				d_category->resourceList().at(index.row())->setAuthor(value.toString());
				break;
			case 2:
				d_category->resourceList().at(index.row())->setTagList(qStringToQStringList(value.toString()));
				break;
			case 3:
				d_category->resourceList().at(index.row())->setLocation(value.toString());
				break;
		}

		emit dataChanged(index, index);
		return true;
	}

	return false;
}

QVariant AbstractResourceListModel::headerData(int section, Qt::Orientation orientation, int role) const
{
	if (role != Qt::DisplayRole)
	{
		return QVariant();
	}

	if (orientation == Qt::Horizontal)
	{
		QString header;

		switch(section)
		{
			case 0:
				header = QString(tr("Title"));
				break;
			case 1:
				header = QString(tr("Author(s)"));
				break;
			case 2:
				header = QString(tr("Tags"));
				break;
			case 3:
				header = QString(tr("Location"));
				break;
		}
		return header;
	}
	else
	{
		return QVariant();
	}
}

bool AbstractResourceListModel::removeRows(int position, int rows, const QModelIndex &index)
{
	Q_UNUSED(index);

	beginRemoveRows(QModelIndex(), position, position+rows-1);

	for (int row = 0; row < rows; ++row)
	{
		d_category->removeResource(position);
	}

	endRemoveRows();

	return true;
}

boost::shared_ptr<AbstractCategory> AbstractResourceListModel::category()
{
	return d_category;
}

void AbstractResourceListModel::setCategory(boost::shared_ptr<AbstractCategory> category)
{
	beginResetModel();
	d_category = category;
	endResetModel();
}

boost::shared_ptr<AbstractResource> AbstractResourceListModel::resource(int row)
{
	return d_category->resourceList().at(row);
}

void AbstractResourceListModel::addResource(boost::shared_ptr<AbstractResource> resource)
{
	beginInsertRows(QModelIndex(), rowCount(), rowCount());

	d_category->addResource(resource);

	endInsertRows();
}

