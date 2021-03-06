FactoryGirl.define do
	factory :page_menu, aliases: [:menu], :class => Refinery::PageMenu do
		sequence(:title) { |n| "Menu #{n}" }
		sequence(:permatitle) {|n| "menu_#{n}" }
	end

	factory :menu_link, aliases: [:link], :class => Refinery::MenuLink do
		menu
		label "label"
		
		factory :menu_link_with_resource do
			refinery_resource_id 1
			refinery_resource_type 'refinery_resource'
		end
	end
end