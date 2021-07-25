local widget = require( "widget" )

local background = display.newImageRect( "background.png", 360, 570 )

background.x = display.contentCenterX
background.y = display.contentCenterY

local function touch( event )
    Label.text = Label.text + 1
end

Runtime:addEventListener( "tap", touch )

Label = display.newText(
    0,
    display.contentCenterX,
    display.contentCenterY,
    native.systemFont,
    150
)

Label:setFillColor( 0, 0, 0 )