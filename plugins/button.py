import pyrogram

from plugins.Zee5_dl import zee5_execute
from pyrogram import Client as Compass_Botz

@Compass_Botz.on_callback_query()
async def formatbuttons(bot, update):
       
    if "|" in update.data:
        await zee5_execute(bot, update)
        
    elif "closeformat" in update.data:     
        await update.message.delete() 
