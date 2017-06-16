module PhotosHelper
  def choose_new_or_edit
    if action_name =='new' || action_name == 'confirm'
      confirm_photos_path
    elsif action_name == 'edit'
      confirm_photos_path
    end
  end
end
