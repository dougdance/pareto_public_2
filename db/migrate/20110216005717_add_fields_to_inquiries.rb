class AddFieldsToInquiries < ActiveRecord::Migration
  def self.up
    add_column :inquiries, :title, :string
    add_column :inquiries, :organization, :string
    add_column :inquiries, :city, :string
    add_column :inquiries, :state, :string
    add_column :inquiries, :referred_by, :string
  end

  def self.down
    remove_column :inquiries, :referred_by
    remove_column :inquiries, :state
    remove_column :inquiries, :city
    remove_column :inquiries, :organization
    remove_column :inquiries, :title
  end
end
