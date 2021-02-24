PLUGIN.name = 'Scoreboard Custom Classes'
PLUGIN.description = 'Overhauls the Helix Scoreboard.'
PLUGIN.author = 'TomSL / ZeMysticalTaco'

ix.command.Add( 'CharSetCustomClass', {
    description = 'Assign a Character a Custom Class on the Scoreboard.',
    adminOnly = true,
    arguments = { ix.type.character, ix.type.text },
    OnRun = function( self, client, char, class )
        ix.util.Notify( string.format( '%s has set %s\'s Custom Class to: %s', client:Name( ), char:GetName( ), class ) )
        char:GetPlayer( ):SetNetVar( 'customClass', class )
        char:SetData( 'customClass', class )
    end
} )

ix.command.Add( 'CharTakeCustomClass', {
    description = 'Remove a Custom Class from a Character.',
    adminOnly = true,
    arguments = { ix.type.character },
    OnRun = function( self, client, char, class )
        ix.util.Notify( string.format( '%s has set taken %s\'s Custom Class.', client:Name( ), char:GetName( ) ) )
        char:GetPlayer( ):SetNetVar( 'customClass', nil )
        char:SetData( 'customClass', nil )
    end
} )

if SERVER then
    function PLUGIN:CharacterLoaded( char )
        if char:GetData( 'customClass', false ) then
            char:GetPlayer( ):SetNetVar( 'customClass', char:GetData( 'customClass' ) )
        else
            char:GetPlayer( ):SetNetVar( 'customClass', false )
        end
    end
end