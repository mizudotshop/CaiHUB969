--========================================--
--          FFS NO-KEY LOADER             --
--========================================--

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- Notif function (pakai punyamu)
local function Notify(title, msg)
    local s = pcall(function()
        loadstring([[
            createNotification = ]] .. string.dump(createNotification)
        )()
    end)
    if s and createNotification then
        createNotification(title, msg)
    else
        print("[FFS] "..title..": "..msg)
    end
end

-- Daftar Game
local Games = {
    [121864768012064] = "fishit.lua",
    [71471877437404] = "cabin.lua",
    [110745840914242] = "cabin.lua",
    [127742093697776] = "pvz.lua",
    [102234703920418] = "mount_daun.lua",
    [128473079243102] = "mount_arunika.lua",
    [81708893434084] = "mount_yagataw.lua",
    [106525193781380] = "mount_sibuatan.lua",
    [101006890582277] = "sumala.lua",
    [82004947373983]  = "yahayuk.lua",
    [123876706043500] = "horeg.lua",
    [138149789228609] = "rinjani.lua",
    [120818739452640] = "ckptw.lua",
    [123072895076939] = "mount_haunt.lua",
    [2693023319]      = "exped_antarctica.lua",
    [75188411736711]  = "yaseterah.lua",
    [123224294054165] = "atin.lua",
    [73347831908825]  = "hell_expedition.lua",
    [108448055225264] = "akhirat.lua",
}

-- Cek Game
local scriptName = Games[game.PlaceId]
if not scriptName then
    Notify("Unsupported Game", "Game ini belum didukung.")
    return
end

Notify("FFS Loader", "Game terdeteksi! Memuat script...")

--====================================================--
--        SYSTEM LOADER TANPA KEY (NO-KEY)            --
--====================================================--

local BASE_URL = "https://your-host-server.com/ffs/"  
-- Ganti ke URL hosting script kamu sendiri:
-- Contoh pastebin raw: https://pastebin.com/raw/xxxxxxx
-- Contoh GitHub raw:  https://raw.githubusercontent.com/user/repo/main/

local function LoadScript(path)
    local full = BASE_URL .. path
    local source = game:HttpGet(full)
    assert(source and #source > 5, "Gagal mengambil script dari server.")
    loadstring(source)()
end

-- Load Script utama
LoadScript(scriptName)

Notify("FFS Loader", "Script berhasil dimuat!")
