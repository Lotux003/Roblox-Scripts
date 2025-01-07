local UILibrary = {}

-- Store default properties for UI elements
UILibrary.Defaults = {
    Button = {
        Size = UDim2.new(0, 200, 0, 50),
        Position = UDim2.new(0.5, -100, 0.5, -25),
        Text = "Button",
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        TextColor3 = Color3.fromRGB(0, 0, 0),
    },
    Label = {
        Size = UDim2.new(0, 200, 0, 50),
        Position = UDim2.new(0.5, -100, 0.5, -25),
        Text = "Label",
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        TextColor3 = Color3.fromRGB(0, 0, 0),
    },
}

-- Function to create UI elements
local function createInstance(className, properties, parent)
    local instance = Instance.new(className)
    for property, value in pairs(properties) do
        instance[property] = value
    end
    instance.Parent = parent
    return instance
end

-- Button creation function
function UILibrary.CreateButton(properties, parent)
    local props = table.clone(UILibrary.Defaults.Button)
    for key, value in pairs(properties) do
        props[key] = value
    end
    return createInstance("TextButton", props, parent)
end

-- Label creation function
function UILibrary.CreateLabel(properties, parent)
    local props = table.clone(UILibrary.Defaults.Label)
    for key, value in pairs(properties) do
        props[key] = value
    end
    return createInstance("TextLabel", props, parent)
end

return UILibrary
