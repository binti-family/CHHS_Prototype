unless SocialWorker.find_by(email: "social.worker@binti.com")
  SocialWorker.create(
    email: "social.worker@binti.com",
    password: "Blueberry23"
  )
end
