desc "Setup initial social worker login"
task :setup_social_worker => :environment do
  user = SocialWorker.find_or_initialize_by(email: "social@binti.com")

  if !user.persisted?
    user.password = "snail invert chicago coating"
    user.save
  end

end
