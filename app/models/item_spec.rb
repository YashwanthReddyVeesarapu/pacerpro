#Testing

require 'rails_helper'

RSpec.describe Item, type: :model do
    describe '#soft_delete' do
      it 'sets the deleted_at attribute' do
        item = create(:item)
        item.soft_delete
        expect(item.deleted_at).to be_present
      end
    end
  
    describe '#restore' do
      it 'resets the deleted_at attribute to nil' do
        item = create(:item, deleted_at: Time.current)
        item.restore
        expect(item.deleted_at).to be_nil
      end
    end
  
    describe 'default scope' do
      it 'excludes soft-deleted items from normal queries' do
        item = create(:item)
        item.soft_delete
        expect(Item.all).not_to include(item)
      end
    end
end
