## Cron-like scheduler for OpenShift v3

### Syntax

#### Environment

Commands can be scheduled by assinging environment variables with TASK_ -prefix.

Separator between schedule and command is *|*

Example:


```
TASK_EXAMPLE=0 30 * * * *|echo I am task!

```

#### Scheduler

```
Field name   | Mandatory? | Allowed values  | Allowed special characters
----------   | ---------- | --------------  | --------------------------
Seconds      | Yes        | 0-59            | * / , -
Minutes      | Yes        | 0-59            | * / , -
Hours        | Yes        | 0-23            | * / , -
Day of month | Yes        | 1-31            | * / , - ?
Month        | Yes        | 1-12 or JAN-DEC | * / , -
Day of week  | Yes        | 0-6 or SUN-SAT  | * / , - ?
```