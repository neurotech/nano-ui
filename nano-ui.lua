local addonLoaded = CreateFrame("Frame")

addonLoaded:RegisterEvent("ADDON_LOADED")
addonLoaded:RegisterEvent("PLAYER_LOGOUT")

addonLoaded:SetScript(
    "OnEvent",
    function(_, event, arg1)
        if event == "ADDON_LOADED" and arg1 == "nano-ui" then
            addonLoaded:UnregisterEvent("ADDON_LOADED")
        end
    end
)
