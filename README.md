# TELEGRAM_LISK_NODE_INFO
In order to receive mobile notifications about the status of our node, we now need to set up a telegram bot to receive notifications from LISK status script. I will assume that you have installed Telegram Messenger on your mobile device but if not, download and install it.
Start a new conversation with userinfobot. This will display your user ID (for example: telegramId = "12345678"). We need to add this to the config file for telegram_notifier.
Start a new conversation on telegram with botfather. Type the following:
/newbot
Enter a name and username for your bot. Botfather will say “Congratulations!” and give you a token number. You need to put this in the variable $telegramApiKey as follows:

$telegramApiKey   = "1122334455:AAEhBOweik6ad9r_QXMENQjcrGbqCr4K-bs";
