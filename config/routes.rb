Rails.application.routes.draw do
  # PART 1: EACH IN ERB
  # ===================

  get("/", { :controller => "lottery", :action => "lucky" })
  get("/lottery/lucky", { :controller => "lottery", :action => "lucky" })
  get("/lottery/unlucky", { :controller => "lottery", :action => "unlucky" })

  # PART 2: RCAV DEBUGGING
  # ======================

  get("/zodiacs/:sign", { :controller => "fortune", :action => "horoscope" })

  # PART 3: MORE R→C→A→V PRACTICE
  # ==========================

  get("/roll/:numdice/:sides", { :controller => "dice", :action => "all_dice_rolls" })
end
