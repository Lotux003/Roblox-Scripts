local UILibrary = {}

-- Utility function to create a new UI instance
local function createUIElement(className, properties, parent)
    local element = Instance.new(className)
    for property, value in pairs(properties) do
        element[property] = value
    end
    if parent then
        element.Parent = parent
    end
    return element
end

-- Create a ScreenGui
function UILibrary.CreateScreenGui(parent)
    return createUIElement("ScreenGui", {}, parent or game.Players.LocalPlayer:WaitForChild("PlayerGui"))
end

-- Create a Button
function UILibrary.CreateButton(properties, parent)
    local defaultProperties = {
        Text = "Button",
        Size = UDim2.new(0, 200, 0, 50),
        Position = UDim2.new(0.5, -100, 0.5, -25),
        BackgroundColor3 = Color3.fromRGB(0, 170, 255),
        TextColor3 = Color3.fromRGB(255, 255, 255),
        Font = Enum.Font.SourceSans,
        TextSize = 24,
    }
    -- Merge defaults with custom properties
    for key, value in pairs(properties) do
        defaultProperties[key] = value
    end
    return createUIElement("TextButton", defaultProperties, parent)
end

-- Create a Label
function UILibrary.CreateLabel(properties, parent)
    local defaultProperties = {
        Text = "Label",
        Size = UDim2.new(0, 200, 0, 50),
        Position = UDim2.new(0.5, -100, 0.4, -25),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        TextColor3 = Color3.fromRGB(0, 0, 0),
        Font = Enum.Font.SourceSans,
        TextSize = 24,
    }
    -- Merge defaults with custom properties
    for key, value in pairs(properties) do
        defaultProperties[key] = value
    end
    return createUIElement("TextLabel", defaultProperties, parent)
end

return UILibrary
