local PLUGIN = PLUGIN
PLUGIN.name = 'EZLinks'
PLUGIN.author = 'TomSL#1104/ZeMysticalTaco / Commissioned by Vanguard'
PLUGIN.description = 'Adds easy URL openers to your server.'
PLUGIN.links = { }

if CLIENT then
    net.Receive( 'ixOpenLinkURL', function( len )
        local url = net.ReadUInt(16) --Now... this was originally 8 bit, and I was like, now who would ever have 256 links, 8 bits should be fine! Then I remembered that people are, really dumb.

        if PLUGIN.links[ url ] then
            gui.OpenURL( PLUGIN.links[ url ] )
        end
    end )
end
if SERVER then
    util.AddNetworkString( 'ixOpenLinkURL' )
end
--how's this for some advanced cancerous namespacing?
function PLUGIN:AddLink( command, description, url )
    local id = #self.links + 1

    self.links[ id ] = url

    local link_command = { }
    link_command.description = description
    link_command.urlID = id --Networking an entire URL?! Who would ever.... :^)

    function link_command:OnRun(client)
        net.Start( 'ixOpenLinkURL' )
        net.WriteUInt( self.urlID, 16 )
        net.Send( client )
    end

    ix.command.Add( command, link_command )
end

--Add links here!

--Example:
--PLUGIN:AddLink('WhatCommandShouldTheyTypeInChat', 'The Description of the command in chat!.', 'https://bfy.tw/RZFf')

PLUGIN:AddLink('TestLink', 'Links to a test url.', 'https://www.google.com')
PLUGIN:AddLink('TestLink2', 'Links to a funnier test url.', 'https://www.sheboyganWI.com')