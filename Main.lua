SLASH_HELLO1 = "/helloworld"
SLASH_HELLO2 = "/hello"

local function showGreeting(name)
    local greeting = "Hello, " .. name .. "!"
    message(greeting)
end

local function HellowWorldHandler(name)
    local nameExists = string.len(name) > 0
    if (nameExists) then
        showGreeting(name)
    else
        local playerName = UnitName("player")
        showGreeting(playerName)
    end
end

SlashCmdList["HELLO"] = HellowWorldHandler
