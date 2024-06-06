const moment = require('moment');
moment.locale('es')
console.log('naci ' + moment('04/11/1996','DD/MM/YYYY').fromNow());