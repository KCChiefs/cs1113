module days

data days = monday | tuesday | wednesday | thursday | friday | saturday | sunday

nextDay: days -> days
nextDay sunday = monday
nextDay monday = tuesday
nextDay tuesday = wednesday
nextDay wednesday = thursday
nextDay thursday = friday
nextDay friday = saturday
nextDay _  = sunday

nextWeekday: days -> days
nextWeekday friday = monday
nextWeekday saturday = monday
nextWeekday d = (nextDay d)


