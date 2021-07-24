local widget = require( "widget" )

local background = display.newImageRect( "background.png", 360, 570 )

background.x = display.contentCenterX
background.y = display.contentCenterY

local function handleButtonEvent( event )
 
    if ( "ended" == event.phase ) then
        button1:setLabel(button1:getLabel() + 1)
    end
end

button1 = widget.newButton(
    {
        left = 100,
        top = 200,
        id = "button1",
        label = 1,
        onEvent = handleButtonEvent,
        fontSize = 150,
        labelColor = 
        {
            default={ 0, 0, 0 }
        }
    }
)

button1.x = display.contentCenterX
button1.y = display.contentCenterY