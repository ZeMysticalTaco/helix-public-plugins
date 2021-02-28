# TomSL (ZeMysticalTaco)'s Public Plugin Repository
Hello! Welcome to my public plugin repository, this is really just to show my work and advertise myself for gainful employment.

# IMPORTANT!
Some of the plugins released here may be years out of date from back when I was previously active, this repository will over time, slowly incorporate projects from different periods, some polished for release, some not. Below will be a list on what is, and isn't supported/maintained.

## Employment
One of the primary purposes of this repository, I'll be open and up front, is a portfolio for contract work. It's not the only purpose, as I have tons of code and systems the general public could make a lot better use of, than just collecting dust on my PC.

You are welcome to contact me at: TomSL#1104 on Discord if you would like work done. But some important things to note before you contact me, as I get this more frequently than I'd like.

- I will not work for 'exposure' or on good will 'that the money will come in'.
- I do not care about the 'next big thing', I work for you. That isn't to say I won't put effort and passion behind the project, it just means an idea is not a basis for whether or not I work for you.
- You will have much better luck coming to me with systems and components, instead of full fledged gamemodes, unless you're offering a reasonable sum, I don't have the time to commit to a long term project.
- Being clear and concise and having an explanation of what you want will always net you brownie points instead of just stating in a couple sentences what you want. I value communication.

(please employ me i need to pay rent)
# F.A.Q
Even years after ghosting out of the Helix scene, I still actually get daily messages about various things, most of the time the same thing. I feel like an old 90's sysadmin who configured a system like a monkey and has to be called in every 6 months for maintenance to it, only I'm not 50 and I can't charge a company 1200 an hour for consultation. I put this here in the hopes that people will read them, I love being asked questions and helping out, please don't mistake this for not liking that, I just don't like the same question, every, single, day.

### What are you planning to do with ACE Medical?
Ironically, what we considered at  the time to be our magnum opus, would be the thing that not only brings me the most pain, but also the most questions.

I am not actively working on ACE Medical, I have started a few iterations here and there but just cannot commit to working on it full time, I tell this story to everyone who asks, and will tell it here.

At the start of the COVID-19 pandemic, I was working on ACE Medical for hours a day, it was going to be my most polished and professional product, one I could proudly display to a potential employer in hopes of kicking the door in to the software industry.

In January, I took on a second member to the project, something I rarely ever do (ask _HappyGoLucky, we've known each other for half a decade and I barely work with him), She was a very good friend and dear to me, but unfortunately, became one of the early contractors of COVID.

The important thing is, She is no longer here, and the project is painful to work on. It's difficult to even work on it in her honor. She created custom source images and content for the UI, and nothing I can create myself will ever hold to that standard she set.

### Your ffi-hl2rp Schema is out of date and some stuff doesn't work!
ffi-hl2rp is not actively maintained. It was meant as a release for work to the general public as to what can be done with the Helix Framework, I was originally intending to support it long term, but that's a lot of work.
*It was always meant as a baseline for you to build your work off of.* I will gladly answer questions and even do quick simple short fixes free of charge, but the repository itself won't be updated. I don't have the time to do that.

That isn't to say components from it won't be picked, rebuilt or polished to be put here. It just means that you're using a product that is at it's official End of Support.

### I saw you put X in #waywo on the Discord years ago, will you give it to me?
Anything I intend to release will be here from here on out, everything is on the table, except ACE Medical at this time, which would be it's own standalone release in a separate repository.

### How do I do...
Just ask, I'll answer, most of the time I will answer whenever I can, but I wanna put this here so people don't think I'm coming off as rude, if you got the same question every day for 3 years you'd feel the same, I promise you. 

I will most likely reply eventually, but I am a busy guy, but I believe in the success of this framework as I have since before it's release and am always willing to help people with problems and code, and am willing to teach lessons along the way.

# Pull Requests
See something you think can be improved? A bug you fixed that I don't know about? Make a Pull Request, if it fits and sits, I'll even add you to the Plugin Author section as a contributor.


# Plugin List

### Custom Classes
A fully working overhaul of the Scoreboard to support Clockwork-like Custom Classes. 

This will remove colored factions from the scoreboard.
```
Commands:
/CharSetCustomClass [character] [class] - Sets the custom class of a character.
/CharTakeCustomClass [character] - Takes the custom class of a character.
```

### Item Menu
Adds a context menu Item spawner, that allows you to spawn items directly on the ground or in your inventory from the Context Menu.

You must have the CAMI privilege "Helix - Item Menu" or be a Superadmin.

Left Click when not looking at anything to spawn an item to the ground.

Left Click when looking at a player to spawn an item into their inventory.

Right Click to spawn an item into your inventory.

### Item Flipping [BETA]
Allows you to rotate items horizontally in an inventory.
*Comes with English, Russian and Korean translation support, accepting contributions for other languages!*
**THIS PLUGIN IS IN BETA, I EXPECT BUGS AND ISSUES TO ARISE, IF YOU ENCOUNTER THEM PLEASE REPORT THEM IT WOULD MAKE ME VERY HAPPY**

For Developers:
By default, and this can be disabled in the plugin file, all items that are not identical in proportions will have a separate flipped version generated.
To disable this for specific items, put this in your item below.
```
ITEM.bNoGenerateFlippedItem = true
```
For Owners:
If you don't want items to automatically generate flipped variants, you can set `PLUGIN.autoGenerateFlippedItems` to `false` in the sh_plugin.lua file.



# Future
*Nothing is guaranteed to stay here, it's more of a personal mental note for me and a tease for you. Something may be released and not even be here.*


