import discord
from discord.ext import commands
import mysql.connector as sql
from dotenv import load_dotenv
import os
# 

load_dotenv()

TOKEN = os.getenv("TOKEN")

# Sql Connect

mydb = sql.connect(
    host = "localhost",
    user = "root",
    database = "kidung_pemulihan"
)
intents = discord.Intents.default()
intents.message_content = True
intents.members = True

bot = commands.Bot(command_prefix='', intents=intents)

status = -1

@bot.event
async def on_message(message):
    
    print(message.content)  
    if message.content.startswith("!"):
        argument = message.content.split(" ", 2)
        if(argument[1] == 'status'): 
            if argument[2] == '0' or argument[2] == "suplemen":
                status = 0
                print(status)
            if argument[2] == '1' or argument[2] == "kidung":
                status = 1
                print(status)
        
    else:
        if status == 0:
            arr = message.content.split("\n", 1)
            mycursor = mydb.cursor()

            number = int(arr[0].replace("S.", "").strip())
        
            run = "INSERT INTO suplemen (judul, isi) VALUES(%s, %s)"
            val = (number, arr[1])

            mycursor.execute(run,val)

            mydb.commit()
        if status == 1:
            arr = message.content.split("\n", 1)
            mycursor = mydb.cursor()

            number = int(arr[0].replace("K.", "").strip())
        
            run = "INSERT INTO kidung (judul, isi) VALUES(%s, %s)"
            val = (number, arr[1])

            mycursor.execute(run,val)

            mydb.commit()
bot.run(TOKEN)