ActiveAdmin.register Chargeback do

 permit_params :date_received, :date_transacted, :contact_name, :account_name, :salesperson_id, :credit_card_id, :amount, :io, :case_number, :reason_id, :date_due, :date_responded, :status_id, :notes, :user_id

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
