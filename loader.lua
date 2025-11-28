local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local isDestroyed = false

local logoAssetId = "rbxassetid://97697143365487"
function createNotification(title, message)
    local NotifGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
    NotifGui.Name = "FFSNotifGui"
    
    local MainFrame = Instance.new("Frame", NotifGui)
    MainFrame.Name = "MainFrame"
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 30, 48)
    MainFrame.BorderSizePixel = 0
    MainFrame.Size = UDim2.new(0, 340, 0, 80)
    MainFrame.Position = UDim2.new(0.5, -170, 0, -100)
    
    local Shadow = Instance.new("ImageLabel", MainFrame)
    Shadow.Name = "Shadow"
    Shadow.BackgroundTransparency = 1
    Shadow.Position = UDim2.new(0, -15, 0, -15)
    Shadow.Size = UDim2.new(1, 30, 1, 30)
    Shadow.ZIndex = 0
    Shadow.Image = logoAssetId
    Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.ImageTransparency = 0.7
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(10, 10, 10, 10)
    
    local UICorner = Instance.new("UICorner", MainFrame)
    UICorner.CornerRadius = UDim.new(0, 10)
    
    local AccentBar = Instance.new("Frame", MainFrame)
    AccentBar.Name = "AccentBar"
    AccentBar.BackgroundColor3 = Color3.fromRGB(100, 180, 255)
    AccentBar.BorderSizePixel = 0
    AccentBar.Size = UDim2.new(0, 4, 1, 0)
    AccentBar.Position = UDim2.new(0, 0, 0, 0)
    
    local AccentCorner = Instance.new("UICorner", AccentBar)
    AccentCorner.CornerRadius = UDim.new(0, 10)
    
    local IconContainer = Instance.new("Frame", MainFrame)
    IconContainer.Name = "IconContainer"
    IconContainer.BackgroundColor3 = Color3.fromRGB(80, 140, 220)
    IconContainer.BorderSizePixel = 0
    IconContainer.Size = UDim2.new(0, 40, 0, 40)
    IconContainer.Position = UDim2.new(0, 15, 0.5, -20)
    
    local IconCorner = Instance.new("UICorner", IconContainer)
    IconCorner.CornerRadius = UDim.new(0, 8)
    
    local LogoImage = Instance.new("ImageLabel", IconContainer)
    LogoImage.Name = "Logo"
    LogoImage.BackgroundTransparency = 1
    LogoImage.Size = UDim2.new(0, 32, 0, 32)
    LogoImage.Position = UDim2.new(0.5, -16, 0.5, -16)
    LogoImage.Image = logoAssetId
    LogoImage.ScaleType = Enum.ScaleType.Fit
    
    local TitleLabel = Instance.new("TextLabel", MainFrame)
    TitleLabel.Name = "Title"
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Size = UDim2.new(1, -75, 0, 28)
    TitleLabel.Position = UDim2.new(0, 65, 0, 10)
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.TextSize = 16
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.Text = title
    
    local MessageLabel = Instance.new("TextLabel", MainFrame)
    MessageLabel.Name = "Message"
    MessageLabel.BackgroundTransparency = 1
    MessageLabel.Size = UDim2.new(1, -75, 0, 24)
    MessageLabel.Position = UDim2.new(0, 65, 0, 40)
    MessageLabel.Font = Enum.Font.Gotham
    MessageLabel.TextColor3 = Color3.fromRGB(180, 200, 230)
    MessageLabel.TextSize = 13
    MessageLabel.TextXAlignment = Enum.TextXAlignment.Left
    MessageLabel.Text = message
    
    local TweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    local tweenIn = TweenService:Create(MainFrame, tweenInfo, {Position = UDim2.new(0.5, -170, 0, 15)})
    
    tweenIn:Play()
    
    task.wait(3.5)
    
    local tweenInfoOut = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
    local tweenOut = TweenService:Create(MainFrame, tweenInfoOut, {
        Position = UDim2.new(0.5, -170, 0, -100),
        BackgroundTransparency = 1
    })
    
    TweenService:Create(TitleLabel, tweenInfoOut, {TextTransparency = 1}):Play()
    TweenService:Create(MessageLabel, tweenInfoOut, {TextTransparency = 1}):Play()
    TweenService:Create(LogoImage, tweenInfoOut, {ImageTransparency = 1}):Play()
    TweenService:Create(AccentBar, tweenInfoOut, {BackgroundTransparency = 1}):Play()
    TweenService:Create(IconContainer, tweenInfoOut, {BackgroundTransparency = 1}):Play()
    
    tweenOut:Play()
    
    game:GetService("Debris"):AddItem(NotifGui, 0.5)
end

local games = {
	[121864768012064] = '5ef4906f230aa87d747191682bd77c38', -- Fish It
	[71471877437404]      = '99f427dbe176af2932530ecbecb6d3dc', -- Cabin
	[110745840914242]     = '99f427dbe176af2932530ecbecb6d3dc', -- Cabin
	[127742093697776] = '48723aaade2692a66843c3f269c123e7', -- Plant Vs Brainrot
	[102234703920418] = "441b692d791ccc8add557367b35a6e2e", -- Mount Daun
	[128473079243102] = "441b692d791ccc8add557367b35a6e2e", -- Mount Arunika
	[81708893434084]  = "441b692d791ccc8add557367b35a6e2e", -- Mount Yagataw
	[106525193781380] = "441b692d791ccc8add557367b35a6e2e", -- Mount Sibuatan
	[101006890582277] = "441b692d791ccc8add557367b35a6e2e", -- Sumala Expedition
	[82004947373983]  = "441b692d791ccc8add557367b35a6e2e", -- Mount Yahayuk
	[123876706043500] = "441b692d791ccc8add557367b35a6e2e", -- Mount Horeg
	[138149789228609] = "441b692d791ccc8add557367b35a6e2e", -- Mount Rinjani
	[120818739452640] = "441b692d791ccc8add557367b35a6e2e", -- Mount Ckptw
	[123072895076939] = "441b692d791ccc8add557367b35a6e2e", -- Mount Haunt
	[2693023319]      = "441b692d791ccc8add557367b35a6e2e", -- Expedition Antarctica
	[75188411736711]  = "441b692d791ccc8add557367b35a6e2e", -- Mount Yaseterah
	[123224294054165] = "441b692d791ccc8add557367b35a6e2e", -- Mount Atin
	[123072895076939] = "441b692d791ccc8add557367b35a6e2e", -- Mount Hauk
	[73347831908825] = "441b692d791ccc8add557367b35a6e2e",  -- Hell Expedition
	[108448055225264] = "441b692d791ccc8add557367b35a6e2e", -- Mount Akhirat
}

local script_id = games[game.PlaceId]
if not script_id then
	createNotification("Unsupported Game", "This game is not supported yet!")
	return
end

local success, gameInfo = pcall(function()
	return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
end)
local gameName = success and gameInfo.Name or "Game"

createNotification("FFS Scripts", gameName .. " detected!")

local API = loadstring(
	game:HttpGet('https://sdkapi-public.luarmor.net/library.lua')
)()
API.script_id = script_id

local closeUI = false
local adUrl = "https://ads.luarmor.net/get_key?for=FFS_Free_Keys-yTRpdogpOywa"
WindUI.Services.luarmorService = {
	Name = 'Luarmor (Lootlabs)',
	Icon = 'link',
	Args = { 'ServiceId' },
	New = function(ServiceId)
		local fsetclipboard = setclipboard or toclipboard

		function ValidateKey(key)
			script_key = key
			local status = API.check_key(key)
			if status.code == 'KEY_VALID' then
				return true, 'Whitelisted!'
			elseif status.code == 'KEY_HWID_LOCKED' then
				return false,
					'Key linked to a different HWID. Please reset it using our bot'
			elseif status.code == 'KEY_INCORRECT' then
				return false, 'Key is wrong or deleted!'
			else
				return false,
					'Key check failed:'
						.. status.message
						.. ' Code: '
						.. status.code
			end
		end

		function CopyLink()
			fsetclipboard(tostring(adUrl))
		end

		return {
			Verify = ValidateKey,
			Copy = CopyLink,
		}
	end,
}

if not script_key then
	local KeyUI = WindUI:CreateWindow({
		Title = '🔑 Key System',
		Icon = 'key',
		Author = 'For Fun Script',
		Folder = 'FFS',
		Size = UDim2.fromOffset(700, 400),
		SideBarWidth = 200,
		Transparent = true,
		KeySystem = {
			Note = 'FFS Scripts - Free with Premium Features',
			SaveKey = true, 
			API = {
				{
					Type = 'luarmorService',
					ServiceId = '1',
				},
			},
		},
	})

	KeyUI:Destroy()
end

createNotification("Success!", "Please wait while the script is loading...")

API.load_script()
