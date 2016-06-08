module ApplicationHelper
  def usa_flash_class(key)
    # the USA Design Standards wants us to ues the class suffix -info
    # for where devise adds a "notice" flash
    {
      notice: :info
    } || key
  end
end
