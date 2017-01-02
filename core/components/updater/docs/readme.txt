UPDATER - the universal update notifier

"keeps you up to date with your MODX version information"

The Updater package contains
- a mail notifier which sends notifications about core updates, package updates and installs and an information digest about your system on a regular base
- a dashboard widget which shows if there is an update for the MODX core available and if there are package updates available for download or install.

==============================================================
Version:    0.3.10-beta
Date:       20160406
Authors:    Jens Külzer (inreti GmbH) <jens.kuelzer@inreti.de>
            
Forum:      http://forums.modx.com/thread/?thread=96613
Support:    modx-updater@inreti.de
==============================================================

Thanks to all attendees of the MODX CCC 2015 for their support and help. This package is one of the
many outcomes of this hacking event and part of Team Updates' efforts to ease the update, monitoring,
maintaining aspects of MODX. See https://github.com/modx-ccc-2015/whishlist for more details.

==============================================================

How to use the widget:
============================
Just install the package and add the Updater widget named "Update status" to your dashboard. It will then show you information about the MODX core status and the installed packages. If the state of update information is stale, the widget will automatically refresh.
Note: only sudo users or users with the permission "perform_maintenance_tasks" will be able to see the widget.


How to use the notifier:
============================
By default no notification is active after installation of Updater. You have various options to activate the notifier of updater. Tweaking the system settings allow you to receive mails about
core updates, package updates or even just a digest mail with a summary of your installed components.
At the moment you can provide email-addresses there for SysAdmins and PackageAdmins. Digests are send to SysAdmins.
In the future you will have certain permissions for your "normal" users to manage reception of notifications.

E.g. to receive notifications about core updates:
- set 'updater.core_notifications_mail' to your desired mail address
- activate 'updater.send_core_notifications' to 'true' to activate it
- reload the page or browse to any of your sites pages (no matter which context) to trigger sending

If emails are send you will notice values in system settings under area 'Persistance'.


Some other system settings to use:
============================

* updater.check_core_release_level = [3]
* updater.check_core_version_level = [1]
Allows you to adjust the new versions which are shown to you or mailed to you. The default is show only stable patch and minor versions.

* cache_expires_core = [86400]
Cache expiration time in seconds. Per default only search once a day for new core updates. Updater uses its own cache partition, clearing the cache in the manager has no effect on that. Please be aware that values less than one day aka 86400 seconds will not be accepted to safe github for massive api calls.

* github_timeout = [1500]
A timeout for looking up new version tags at github. You can adjust this according to your servers connection - keep as low as possible.

* modxcom_timeout = [1500]
A timeout for looking up the install zipball at modx.com.
