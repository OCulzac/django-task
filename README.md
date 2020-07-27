# Django Task 

Simple DRF app for monitoring transactions in pre defined wallets.


## Dev Setup

Clone repo: ` git clone git@github.com:OCulzac/django-task.git`

Direct Download: `https://github.com/OCulzac/django-task/archive/master.zip`

## Deployment
1. Navigate to b2broker_task folder

2. Activate the virtual environment (WINDOWS) by typing ` .\b2broker\Scripts\activate  ` in the terminal.

3. Run: ` python manage.py runserver `


## Database

This project was done using mysql database on WAMPP Server.

If you are using a different database then change the `b2broker_task\src\settings.py` file accordingly but the original settings are:
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'b2broker',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'localhost',
        'PORT': '3308',
    }
}
```
Backups of the default database used can be found at in the `b2broker_task\budget\db_backup` folder.
Just import the into your db client. The backups are available in `.csv`, `.sql` and `.json` formats. 
Use the appropriate format for your db client.


## Endpoints and Routes
After running `python manage.py runserver`, go to `http://127.0.0.1:8000/` in you browser. 
The browsable api provides 3 hyperlinked endpoint routes in the Api Root:

```
{
    "transactions": "http://127.0.0.1:8000/transactions/",
    "wallet": "http://127.0.0.1:8000/wallet/",
    "update-wallet": "http://127.0.0.1:8000/update-wallet/"
}
```

`transactions` is an API endpoint that allows GET, POST requests. That is the user can view or add transactions.
To view, update or delete (GET, PUT, DELETE requests) a specific transaction, enter the specific `id` number into the address bar `http://127.0.0.1:8000/transactions/id`.
At this point, transactions are hardcoded to interact with 4 predefined wallets.

`wallet` is an API endpoint that only allows GET requests.
At this point wallets are hardcoded as BitCoin, Etherium, Basic Attention Token and Ripple.

**NOTE: If the user wants to add multiple iterations of the same wallet and transaction 
to other wallets, then this can be done in the admin backend page `http://127.0.0.1:8000/admin/`**

`update-wallet` is an API endpoint that only allows GET requests to update the
wallet balance based on the collection transaction amounts per wallet.  




