# axigen-antispam
Axigen Mail Server with ClamAV and SpamAssassin

Self-hosting a mail server is not a simple task
Keep in mind that:
 1. If you wish to send out mail you will need to create a SPF record, this record will require you to have a Static IP.
 2. Most Mail Provider (Gmail, Yahoo, etc...) will not accept your maill if your mail is not signed with DKIM, so you need to set that up too.
 3. Even if your mail is signed with DKIM and have pass all security verification, it is still very likely that the mail that you sent will end up in the spam folder, this is because of low IP reputation, there are no easy way to fix this, you could relay your request to other service like SendGrid tho.
 4. Eventhough this container have antispam filter built in, it is not perfect.
