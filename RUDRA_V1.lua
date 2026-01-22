-- RUDRA V1 | UNITED
-- FINAL CLIENT SCRIPT
-- DELTA EXECUTOR COMPATIBLE

-- ================= SERVICES =================
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local lp = Players.LocalPlayer
if not lp then return end

-- ================= CONFIG =================
local ADMIN = "Rudrapawar123456"

local STATUS_URL = "https://raw.githubusercontent.com/RudraForever/Rudra-v1-/main/status.txt"
local WHITELIST_URL = "https://raw.githubusercontent.com/RudraForever/Rudra-v1-/main/whitelist.txt"

local LINE_LEN = 170
local WARNING_DELAY = 20

-- ================= TMKX WORDS =================
local TMKX_WORDS = {
	"TMKX MAI BUS","TMKX MAI AEROPLANE","TMKX MAI TRAIN","TMKX MAI STATION",
	"TMKX MAI PHONE","TMKX MAI LAPTOP","TMKX MAI SCHOOL","TMKX MAI STUDENTS",
	"TMKX MAI TEACHERS","TMKX MAI CLASSROOM","TMKX MAI BOOKS",
	"TMKX MAI PIZZA","TMKX MAI BURGER","TMKX MAI ICECREAM",
	"TMKX MAI CAR","TMKX MAI BIKE","TMKX MAI ROAD","TMKX MAI HIGHWAY",
	"TMKX MAI ROBLOX","TMKX MAI BROOKHAVEN","TMKX MAI DELTA",
	"TMKX MAI FOOTBALL","TMKX MAI CRICKET","TMKX MAI GARDEN",
	"TMKX MAI CLOCK","TMKX MAI WATCH","TMKX MAI PEN","TMKX MAI PENCIL",
	"TMKX MAI NOTEBOOK","TMKX MAI BAG","TMKX MAI WALLET",
	"TMKX MAI CHARGER","TMKX MAI POWERBANK","TMKX MAI SPEAKER",
	"TMKX MAI HEADPHONES","TMKX MAI MIC","TMKX MAI ROUTER",
	"TMKX MAI WIFI","TMKX MAI SATELLITE","TMKX MAI SIGNAL",
	"TMKX MAI AI","TMKX MAI ROBOT","TMKX MAI FUTURE","TMKX MAI ASIAN PAINTS",
	"TMKX MAI KELA","TMKX MAI BANDAR","TMKX MAI PHOTO","TMKX MAI LENS",
	"TMKX MAI LOTION","TMKX MAI CREAM","TMKX MAI GOD","TMKX MAI DEVIL",
	"TMKX MAI SANTA","TMKX MAI PHD","TMKX MAI GRADUATION","TMKX MAI MBA",
	"TMKX MAI T-SHIRT","TMKX MAI SHIRT","TMKX MAI SHOES","TMKX MAI SNEAKERS",
	"TMKX MAI COAT","TMKX MAI DARU","TMKX MAI PED","TMKX MAI LOVE B1TE",
	"TMKX MAI ORANGE","TMKX MAI APPLE","TMKX MAI MANGO","TMKX MAI BANANA",
	"TMKX MAI CARROT","TMKX MAI CUCUMBER","TMKX MAI SALMAN KHAN",
	"TMKX MAI SRK","TMKX MAI SANJAYDUTT","TMKX MAI BOLLYWOOD",
	"TMKX MAI HOLLYWOOD","TMKX MAI TOLLYWOOD","TMKX MAI STUNT",
	"TMKX MAI RACE","TMKX MAI BRAKE","TMKX MAI MARUTI",
	"TMKX MAI FERRARI","TMKX MAI FORTUNER","TMKX MAI LAMBORGHINI",
	"TMKX MAI  PORSCHE","TMKX MAI INNOVA","TMKX MAI CREATA",
	"TMKX MAI METRO","TMKX MAI STAFF","TMKX MAI OFFICE",
	"TMKX MAI WORKERS","TMKX MAI PLUMBER","TMKX MAI REPAIRER",
	"TMKX MAI LAWYER","TMKX MAI POLICE","TMKX MAI CHOR",
	"TMKX MAI CR1MINAL","TMKX MAI DARU","TMKX MAI BEER","TMKX MAI WINE",
	"TMKX MAI BOTTLE","TMKX MAI GLASS","TMKX MAI PLATE",
	"TMKX MAI BULB","TMKX MAI WIRE","TMKX MAI ADAPTER",
	"TMKX MAI EGG","TMKX MAI HARRYPOTTER","TMKX MAI KANGAROO",
	"TMKX MAI DINOSAUR","TMKX MAI STRANGERTHINGS",
	"TMKX MAI BAMBOO","TMKX MAI WOOD","TMKX MAI PANDA",
	"TMKX MAI PLASTIC","TMKX MAI THERMOCOL","TMKX MAI THERMAL",
	"TMKX MAI TITANIC","TMKX MAI SHIP"," TMKX MAI BEWADA",
	"TMKX MAI NIBBA","TMKX MAI SPACE","TMKX MAI SUN",
	"TMKX MAI MARS","TMKX MAI SATURN","TMKX MAI MARS","TMKX MAI JUPITER",
	"TMKX MAI RED STAR","TMKX MAI GIANT STAR",
	"TMKX MAI FATHER","TMKX MAI MOTHER","TMKX MAI SISTER",
	"TMKX MAI BROTHER","TMKX MAI DADI","TMKX MAI DADA",
	"TMKX MAI PAR DADA","TMKX MAI CYCLE","TMKX MAI MOTOR",
	"TMKX MAI TURBO","TMKX MAI RUDRA","TMKX MAI SAB PGL",
	"TMKX MAI AMERICA","TMKX MAI INDIA","TMKX MAI RUSSIA",
	"TMKX MAI ASIA","TMKX MAI EUROPE","TMKX MAI AFRIA",
	"TMKX MAI AUSTRALIA","TMKX MAI THERMOMETER",
	"TMKX MAI ACID","TMKX MAI LAB","TMKX MAI CHEM1CALS",
	"TMKX MAI BASES","TMKX MAI HYPOTENUSE",
	"TMKX MAI RIGHTANGLE","TMKX MAI SQURE",
	"TMKX MAI CIRCLE","TMKX MAI RECTANGLE",
	"TMKX MAI COCKROACH","TMKX MAI BUTTERFLY",
	"TMKX MAI DOG","TMKX MAI CAT","TMKX MAI DOLPHIN",
	"TMKX MAI WHALE","TMKX MAI SHARK","TMKX MAI SEAHORSE",
	"TMKX MAI MERMAID","TMKX MAI JELLYFISH",
	"TMKX MAI ROD","TMKX MAI KHAMBA","TMKX MAI P1LLAR",
	"TMKX MAI BR1DGE","TMKX MAI COMPASS",
	"TMKX MAI WATCH","TMKX MAI BANK","TMKX MAI CLUB",
	"TMKX MAI DENTIST","TMKX MAI HOSPITAL","TMKX MAI DOCTOR",
	"TMKX MAI NURSE","TMKX MAI PAT1ENT","TMKX MAI VISITOR",
	"TMKX MAI CL1ENT","TMKX MAI PURGATORY","TMKX MAI BERMUDA",
	"TMKX MAI KALAHARI","TMKX MAI BR RANK","TMKX MAI CS RANK",
	"TMKX MAI LONEWOLF","TMKX MAI TRAN1NG",
	"TMKX MAI MICKEY MOUSE","TMKX MAI DORAEMON",
	"TMKX MAI NOB1TA","TMKX MAI SHIZUKA","TMKX MAI G1AN",
	"TMKX MAI SUNEO","TMKX MAI SHINCHAN",
	"TMKX MAI PERMAN","TMKX MAI BHOSADMAN",
	"TMKX MAI SP1DERMAN","TMKX MAI BATMAN",
	"TMKX MAI CAPTAINAMERICA","TMKX MAI THOR",
	"TMKX MAI VENOM","TMKX MAI SUPERMAN",
	"TMKX MAI TV","TMKX MAI FRIDGE","TMKX MAI INVERTER",
	"TMKX MAI GENERATOR","TMKX MAI 500RS","TMKX MAI 100RS",
	"TMKX MAI 200","TMKX MAI UN1TEDKALAND",
	"TMKX MAI 10 BNDE","TMKX MAI KINGFISHER",
	"TMKX MAI O1D MONK","TMKX MAI B0T","TMKX MAI N00B",
	"TMKX MAI ATANKWAD","TMKX MAI REP","TMKX MAI ATTACK",
	"TMKX MAI GLASSES"," TMKX MAI MINNOR","TMKX MAI SUNGLASSES",
	"TMKX MAI PR1NTER","TMKX MAI BASS","TMKX MAI VOLUME",
	"TMKX MAI MR BEAST","TMKX MAI PEWDIEPIE","TMKX MAI JOHNCINA",
	"TMKX MAI CURTAIN","TMKX MAI SOFA","TMKX MAI BEDSHEET",
	"TMKX MAI BED","TMKX MAI PILLOW","TMKX MAI DESIGNER",
	"TMKX MAI RENOVATION","TMKX MAI CRASHLANDING",
	"TMKX MAI SIGMA","TMKX MAI ALPHA","TMKX MAI GIGA",
	"TMKX MAI TESTOSTERONE"," TMKX MAI ESTROGEN",
	"TMKX MAI BELL","TMKX MAI DOOR","TMKX MAI FLAT",
	"TMKX MAI V1LLA","TMKX MAI LUXURY","TMKX MAI BUNGLO",
	"TMKX MAI H3ART","TMKX MAI L1VER","TMKX MAI K1DNEY",
	"TMKX MAI DAM","TMKX MAI PRESSURE","TMKX MAI BLACKHOLE",
	"TMKX MAI ROCKET","TMKX MAI SPACESHIP","TMKX MAI ASTRONAUT",
	"TMKX MAI CNG","TMKX MAI PETROL","TMKX MAI WATER",
	"TMKX MAI D1SEAL","TMKX MAI COKE","TMKX MAI DEW",
	"TMKX MAI SPRITE","TMKX MAI FACTORY","TMKX MAI COMPANY",
	"TMKX MAI GAS","TMKX MAI HELIUM","TMKX MAI ENERGY",
	"TMKX MAI ELECTRICITY","TMKX MAI RADIO","TMKX MAI RADIATION",
	"TMKX MAI SHOK","TMKX MAI FREQUENCY","TMKX MAI ACTIVE",
	"TMKX MAI NITROGEN","TMKX MAI SULPHUR","TMKX MAI C02",
	"TMKX MAI H20","TMKX MAI S2S0","TMKX MAI A²",
	"TMKX MAI TALWINDER","TMKX MAI HONEY SINGH",
	"TMKX MAI BADSHAH","TMKX MAI RAP","TMKX MAI MELODY",
	"TMKX MAI GUITAR","TMKX MAI PIANO","TMKX MAI DRUM",
	"TMKX MAI BENCH","TMKX MAI WHITEBOARD",
	"TMKX MAI BLACKBOARD","TMKX MAI CHALK","TMKX MAI DUSTER",
	"TMKX MAI DIAMOND","TMKX MAI GOLD","TMKX MAI INVESTMENT",
	"TMKX MAI LOAN","TMKX MAI FAN","TMKX MAI TUBE",
	"TMKX MAI PIPE","TMKX MAI WASH","TMKX MAI SOAP",
	"TMKX MAI SHAMPOO","TMKX MAI DANDA","TMKX MAI PAN",
	"TMKX MAI STOVE","TMKX MAI BLUEDRUM",
	"TMKX MAI CONSTRUCTION","TMKX MAI BULDOGER",
	"TMKX MAI JCB","TMKX MAI FARMHOUSE","TMKX MAI HELIPAD",
	"TMKX MAI SITE","TMKX MAI CONTRACT","TMKX MAI FARMER",
	"TMKX MAI FARM","TMKX MAI FARMING","TMKX MAI BUILDING",
	"TMKX MAI PROJECT","TMKX MAI AMIR","TMKX MAI GARIB",
	"TMKX MAI CHINAL","TMKX MAI HIJRA"," TMKX MAI 6KKA",
	"TMKX MAI FREEZY","TMKX MAI BOMB","TMKX MAI HATTHI",
	"TMKX MAI MONEY","TMKX MAI PARTICIAN",
	" TMKX MAI DIWALI","TMKX MAI CHRISTMAS","TMKX MAI EID",
	"TMKX MAI CAVE","TMKX MAI MOUNTAIN","TMKX MAI FOUNTAIN",
	"TMKX MAI CRUISE","TMKX MAI BEACH","TMKX MAI OCEAN",
	"TMKX MAI SEA","TMKX MAI SUNSCREEN","TMKX MAI WIRE",
	"TMKX MAI CURRENT","TMKX MAI GHAR","TMKX MAI MANSION",
	"TMKX MAI FRAME","TMKX MAI SAB",
-- ===== TV KE BAAD ADD KI GAYI LIST (UNCHANGED WORDS) =====
"TMKX MAI RAYS",
"TMKX MAI OXYGEN",
"TMKX MAI CARBON",
"TMKX MAI DIOXIDE",
"TMKX MAI GIRL TMKX MAI BOY",
"TMKX MAI WATCHMAN",
"TMKX MAI PURSE",
"TMKX MAI TABLE",
"TMKX MAI BENCH",
"TMKX MAI BARBELL",
"TMKX MAI GYM",
"TMKX MAI TREADMILL",
"TMKX MAI DUMBELL",
"TMKX MAI WEIGHT",
"TMKX MAI POWER",
"TMKX MAI TRAINER",
"TMKX MAI MEMBERSHIP",
"TMKX MAI OWNER",
"TMKX MAI RUDRAKALAND",
"TMKX MAI APRIL",
"TMKX MAI JUNE",
"TMKX MAI MAY",
"TMKX MAI FEBRUARY",
"TMKX MAI JANUARY",
"TMKX MAI AUGUST",
"TMKX MAI MARCH",
"TMKX MAI SATURDAY",
"TMKX MAI MONDAY",
"TMKX MAI FRIDAY",
"TMKX MAI THUSDAY",
"TMKX MAI SUNDAY",
"TMKX MAI LULLI",
"TMKX MAI BACCHA",
"TMKX MAI PILA",
"TMKX MAI BOX",
"TMKX MAI METAL",
"TMKX MAI SILVER",
"TMKX MAI STEEL",
"TMKX MAI BRASS",
"TMKX MAI COPPER",
"TMKX MAI IRON",
"TMKX MAI CHOCO",
"TMKX MAI UTENSIL",
"TMKX MAI MOTI",
"TMKX MAI GOTA",
"TMKX MAI LOTA",
"TMKX MAI GRINDER",
"TMKX MAI BURNER",
"TMKX MAI CYCLINDER",
"TMKX MAI TRUCK",
"TMKX MAI TEMPO",
"TMKX MAI OVERLORD",
	"TMKX MAI DYNASTY",
	"TMKX MAI THRONE",
	"TMKX MAI WARZONE",
	"TMKX MAI BATTLEFIELD",
	"TMKX MAI STRIKE",
	"TMKX MAI DOMINATION",
	"TMKX MAI CONQUEST",
	"TMKX MAI SUPREMACY",
	"TMKX MAI REIGN",

	"TMKX MAI DARKNESS",
	"TMKX MAI SHADOW",
	"TMKX MAI PHANTOM",
	"TMKX MAI WRAITH",
	"TMKX MAI VORTEX",
	"TMKX MAI VOID",
	"TMKX MAI OBLIVION",
	"TMKX MAI INFERNO",
	"TMKX MAI FURY",
	"TMKX MAI CHAOS",

	"TMKX MAI CYBERCORE",
	"TMKX MAI MAINFRAME",
	"TMKX MAI FIREWALL",
	"TMKX MAI ENCRYPTION",
	"TMKX MAI DECRYPTION",
	"TMKX MAI PAYLOAD",
	"TMKX MAI BACKDOOR",
	"TMKX MAI ROOTACCESS",
	"TMKX MAI OVERCLOCK",
	"TMKX MAI PROTOCOL",

	"TMKX MAI WARLORD",
	"TMKX MAI ASSASSIN",
	"TMKX MAI MERCENARY",
	"TMKX MAI SNIPER",
	"TMKX MAI COMMANDER",
	"TMKX MAI GENERAL",
	"TMKX MAI CAPTAIN",
	"TMKX MAI SOLDIER",
	"TMKX MAI TROOPS",
	"TMKX MAI ARSENAL",

	"TMKX MAI OUTLAW",
	"TMKX MAI RENEGADE",
	"TMKX MAI VIGILANTE",
	"TMKX MAI HITMAN",
	"TMKX MAI TRACKER",
	"TMKX MAI HUNTER",
	"TMKX MAI PREDATOR",
	"TMKX MAI SURVIVOR",
	"TMKX MAI NOMAD",
	"TMKX MAI ROGUE",

	"TMKX MAI MENTALITY",
	"TMKX MAI PSYCHOLOGY",
	"TMKX MAI INSTINCT",
	"TMKX MAI REFLEX",
	"TMKX MAI DISCIPLINE",
	"TMKX MAI DETERMINATION",
	"TMKX MAI WILLPOWER",
	"TMKX MAI DOMINANCE",
	"TMKX MAI ENDURANCE",
	"TMKX MAI GRIND",

	"TMKX MAI NEURAL",
	"TMKX MAI QUANTUM",
	"TMKX MAI PARTICLE",
	"TMKX MAI WAVELENGTH",
	"TMKX MAI SPECTRUM",
	"TMKX MAI PLASMA",
	"TMKX MAI MAGNETISM",
	"TMKX MAI FUSION",
	"TMKX MAI FISSION",
	"TMKX MAI CORE",

	"TMKX MAI TIMELINE",
	"TMKX MAI PARADOX",
	"TMKX MAI DIMENSION",
	"TMKX MAI REALM",
	"TMKX MAI PORTAL",
	"TMKX MAI RIFT",
	"TMKX MAI ASCENSION",
	"TMKX MAI TRANSCEND",
	"TMKX MAI EVOLUTION",
	"TMKX MAI AWAKENING",
}

-- ================= AUTO PATTERNS (20) =================
local PATTERNS = {
	"_","-","=","#","*","+","~","!","@","$",
	"%","&","?","/","|",":",";",".",">","<"
}

-- ================= KILL SWITCH =================
local ok, status = pcall(function()
	return game:HttpGet(STATUS_URL)
end)
if not ok or not status then return end
status = status:gsub("%s+", "")
if status ~= "ON" then
	warn("SCRIPT DISABLED BY OWNER")
	return
end

-- ================= WHITELIST =================
local ok2, list = pcall(function()
	return game:HttpGet(WHITELIST_URL)
end)
if not ok2 or not list then return end

local allowed = false
for name in string.gmatch(list, "[^\r\n]+") do
	if name == lp.Name then allowed = true break end
end
if not allowed then
	warn("ACCESS DENIED | NOT WHITELISTED")
	return
end

-- ================= STATE =================
local active = false
local starting = false
local spamDelay = 1.5
local targetName = ""
local tmkxIndex = 1
local patternIndex = 1

-- ================= CHAT SEND =================
local function send(msg)
	local ch = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
	if ch then ch:SendAsync(msg) end
end

-- ================= BUILDERS =================
local function buildPatternLine()
	local sym = PATTERNS[patternIndex]
	patternIndex += 1
	if patternIndex > #PATTERNS then patternIndex = 1 end
	return string.rep(sym, LINE_LEN)
end

local function buildMessage(target)
	local text = TMKX_WORDS[tmkxIndex]
	tmkxIndex += 1
	if tmkxIndex > #TMKX_WORDS then tmkxIndex = 1 end
	return target .. " " .. text
end

-- ================= WARNING =================
local function spamWarning()
	send(buildPatternLine())
	send("Spam starting in 20 seconds | Made by Rudra")
	send(buildPatternLine())
	task.wait(WARNING_DELAY)
end

-- ================= GUI =================
local old = lp.PlayerGui:FindFirstChild("RUDRA_V1")
if old then old:Destroy() end

local gui = Instance.new("ScreenGui", lp.PlayerGui)
gui.Name = "RUDRA_V1"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,360,0,260)
frame.Position = UDim2.new(0.5,-180,0.45,-130)
frame.BackgroundColor3 = Color3.fromRGB(15,15,15)
frame.Active = true
frame.Draggable = true
frame.BorderSizePixel = 0

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,34)
title.Text = "RUDRA V1 | UNITED"
title.TextColor3 = Color3.fromRGB(255,200,0)
title.TextSize = 20
title.BackgroundColor3 = Color3.fromRGB(30,30,30)
title.BorderSizePixel = 0

-- TARGET BOX
local targetBox = Instance.new("TextBox", frame)
targetBox.Size = UDim2.new(0.8,0,0,26)
targetBox.Position = UDim2.new(0.1,0,0.22,0)
targetBox.PlaceholderText = "Target name"
targetBox.BackgroundColor3 = Color3.fromRGB(25,25,25)
targetBox.TextColor3 = Color3.fromRGB(255,255,255)
targetBox.BorderSizePixel = 0
targetBox.FocusLost:Connect(function()
	targetName = targetBox.Text
end)

-- DELAY BOX
local delayBox = Instance.new("TextBox", frame)
delayBox.Size = UDim2.new(0.4,0,0,26)
delayBox.Position = UDim2.new(0.3,0,0.38,0)
delayBox.Text = tostring(spamDelay)
delayBox.BackgroundColor3 = Color3.fromRGB(25,25,25)
delayBox.TextColor3 = Color3.fromRGB(255,255,255)
delayBox.BorderSizePixel = 0
delayBox.FocusLost:Connect(function()
	local v = tonumber(delayBox.Text)
	if v and v >= 0.3 then spamDelay = v end
end)

-- BUTTONS
local startBtn = Instance.new("TextButton", frame)
startBtn.Size = UDim2.new(0.4,0,0,30)
startBtn.Position = UDim2.new(0.05,0,0.7,0)
startBtn.Text = "START"
startBtn.BackgroundColor3 = Color3.fromRGB(40,120,40)
startBtn.TextColor3 = Color3.fromRGB(255,255,255)
startBtn.BorderSizePixel = 0

local stopBtn = Instance.new("TextButton", frame)
stopBtn.Size = UDim2.new(0.4,0,0,30)
stopBtn.Position = UDim2.new(0.55,0,0.7,0)
stopBtn.Text = "STOP"
stopBtn.BackgroundColor3 = Color3.fromRGB(120,40,40)
stopBtn.TextColor3 = Color3.fromRGB(255,255,255)
stopBtn.BorderSizePixel = 0

-- ================= SPAM LOOP =================
task.spawn(function()
	while true do
		if active then
			send(buildPatternLine())
			send(buildMessage(targetName))
			task.wait(spamDelay)
		else
			task.wait(0.2)
		end
	end
end)

-- ================= CONTROLS =================
local function startSpam()
	if active or starting then return end
	if targetName == "" then return end
	starting = true
	tmkxIndex = 1
	patternIndex = 1
	task.spawn(function()
		spamWarning()
		active = true
		starting = false
	end)
end

local function stopSpam()
	active = false
	starting = false
	tmkxIndex = 1
	patternIndex = 1
end

startBtn.MouseButton1Click:Connect(startSpam)
stopBtn.MouseButton1Click:Connect(stopSpam)

-- ================= ADMIN CHAT COMMANDS =================
lp.Chatted:Connect(function(msg)
	if lp.Name ~= ADMIN then return end
	local args = string.split(msg, " ")
	local cmd = string.lower(args[1])
	if cmd == "!start" then
		startSpam()
	elseif cmd == "!stop" then
		stopSpam()
	elseif cmd == "!delay" then
		local d = tonumber(args[2])
		if d and d >= 0.3 then
			spamDelay = d
			delayBox.Text = tostring(d)
		end
	end
end)

warn("RUDRA V1 | FINAL LOADED | WHITELISTED")
