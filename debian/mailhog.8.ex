.\"                                      Hey, EMACS: -*- nroff -*-
.\" First parameter, NAME, should be all caps
.\" Second parameter, SECTION, should be 1-8, maybe w/ subsection
.\" other parameters are allowed: see man(7), man(1)
.TH MAILHOG 8 "March 31, 2015" "version v0.1.6"
.\" Please adjust this date whenever revising the manpage.
.\"
.\" Some roff macros, for reference:
.\" .nh        disable hyphenation
.\" .hy        enable hyphenation
.\" .ad l      left justify
.\" .ad b      justify to both left and right margins
.\" .nf        disable filling
.\" .fi        enable filling
.\" .br        insert line break
.\" .sp <n>    insert n+1 empty lines
.\" for manpage-specific macros, see man(7)
.SH NAME
mailhog \- Web and API based SMTP testing 
.SH SYNOPSIS
.B mailhog
.RI [ options ]
.br
.SH DESCRIPTION
Inspired by MailCatcher, easier to install, built with Go, MailHog runs without installation on multiple platforms.
.PP
.\" TeX users may be more comfortable with the \fB<whatever>\fP and
.\" \fI<whatever>\fP escape sequences to invode bold face and italics,
.\" respectively.
\fBmailhog\fP is an email testing tool for developers:

.SH OPTIONS
A summary of options and their default values is included below.
.TP
.B \-h, \-\-help
Show summary of options.
.TP
.B \-api-bind-addr="0.0.0.0:8025"
HTTP bind interface and port for API, e.g. 0.0.0.0:8025 or just :8025
.TP
.B \-api-host=""
API URL for MailHog UI to connect to, e.g. http://some.host:1234
.TP
.B \-cors-origin=""
CORS Access-Control-Allow-Origin header for API endpoints
.TP
.B \-hostname="mailhog.example"
Hostname for EHLO/HELO response, e.g. mailhog.example
.TP
.B \-invite-jim=false
Decide whether to invite Jim (beware, he causes trouble)
.TP
.B \-jim-accept=0.99
Chance of accept
.TP
.B \-jim-disconnect=0.005
Chance of disconnect
.TP
.B \-jim-linkspeed-affect=0.1
Chance of affecting link speed
.TP
.B \-jim-linkspeed-max=10240
Maximum link speed (in bytes per second)
.TP
.B \-jim-linkspeed-min=1024
Minimum link speed (in bytes per second)
.TP
.B \-jim-reject-auth=0.05
Chance of rejecting authentication (AUTH)
.TP
.B \-jim-reject-recipient=0.05
Chance of rejecting a recipient (RCPT TO)
.TP
.B \-jim-reject-sender=0.05
Chance of rejecting a sender (MAIL FROM)
.TP
.B \-mongo-coll="messages"
MongoDB collection, e.g. messages
.TP
.B \-mongo-db="mailhog"
MongoDB database, e.g. mailhog
.TP
.B \-mongo-uri="127.0.0.1:27017"
MongoDB URI, e.g. 127.0.0.1:27017
.TP
.B \-outgoing-smtp=""
JSON file containing outgoing SMTP servers
.TP
.B \-smtp-bind-addr="0.0.0.0:1025"
SMTP bind interface and port, e.g. 0.0.0.0:1025 or just :1025
.TP
.B \-storage="memory"
Message storage: memory (default) or mongodb
.TP
.B \-ui-bind-addr="0.0.0.0:8025"
HTTP bind interface and port for UI, e.g. 0.0.0.0:8025 or just :8025
.SH SEE ALSO
https://github.com/mailhog/MailHog
.SH AUTHOR
mailhog was written by Ian Kent (http://iankent.uk).
.PP
This manual page was written by Lionel Félicité <deogracia@free.fr>,
for the Debian project (and may be used by others).
