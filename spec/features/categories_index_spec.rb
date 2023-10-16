require 'rails_helper' 

    RSpec.describe 'category#index', type: :feature do
    before(:each) do
        @user1 = User.create(
          id: 2,
          name: 'cosmas wasswa',
          email: 'cosy@gmail.com',
          password: 'Cosy1234',
          confirmed_at: Time.now
        )
    
        sign_in @user1
    
        @categories = [
          Category.create(
            id: 1,
            author_id: @user1.id,
            name: 'Clothes',
            icon: 'https://unsplash.com/photos/F_-0BxGuVvo',
          ),
          Category.create(
            id: 2,
            author_id: @user1.id,
            name: 'Stationery',
            icon: 'https://unsplash.com/photos/F_-0BxGuVvo',
          )
        ]
   
        visit user_categories_url(@user1.id)
      end

      describe '#Indexpage' do
      it 'can see the category name.' do
        @categories.each do |category|
          expect(page).to have_content(category.name)
        end
      end

      it 'can see the category icon.' do
        @categories.each do |category|
            expect(page).to have_css("img[src='#{category.icon}']")
        end
      end

      it 'redirects to the new category form when clicking "Add a new Category"' do
        click_link 'Add a new Category' 
        expect(page).to have_current_path(new_user_category_path(@user1.id))
      end
end
end