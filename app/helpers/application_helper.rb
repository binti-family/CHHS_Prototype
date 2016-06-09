module ApplicationHelper
  USA_FLASH_CLASS = {
    alert: :error,
    notice: :info
  }

  def usa_flash_class(key)
    # the USA Design Standards wants us to ues the class suffix -info
    # for where devise adds a "notice" flash
    USA_FLASH_CLASS[key] || key
  end
end
