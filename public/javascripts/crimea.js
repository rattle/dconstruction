

var frankieroberto = [
  { date: "2010-08-23T10:07", rating: 9.5, note: "Boom"},
  { date: "2010-08-23T10:37", rating: 2, note: "Boom"},
  { date: "2010-08-23T11:15", rating: 3.5, note: "Boom"},
  { date: "2010-08-23T11:45", rating: 3, note: "Boom"},
  { date: "2010-08-23T12:15", rating: 1, note: "Boom"},
  { date: "2010-08-23T12:45", rating: 1, note: "Boom"},

];

var monkeyhelpr = [
  { date: "2010-08-23T10:12", rating: 1, note: "bored"},
  { date: "2010-08-23T10:56", rating: 1, note: "bored"},
  { date: "2010-08-23T11:54", rating: 4, note: "bored"},
  { date: "2010-08-23T12:01", rating: 4, note: "bored"},
  { date: "2010-08-23T12:16", rating: 6.5, note: "bored"},
  { date: "2010-08-23T12:49", rating: 6, note: "bored"},
  { date: "2010-08-23T13:16", rating: 5, note: "bored"},

];

var andrewpendrick = [
  { date: "2010-08-23T10:12", rating: 1, note: "bored"},
  { date: "2010-08-23T11:17", rating: 3, note: "useless info"},
  { date: "2010-08-23T12:23", rating: 4.5, note: "egotistical"},
  { date: "2010-08-23T13:35", rating: 4, note: "wow"},
  { date: "2010-08-23T15:49", rating: 6.5, note: "impressed"},
];

var jamesb = [
  { date: "2010-08-23T10:18", rating: 1, note: "bored"},
  { date: "2010-08-23T11:03", rating: 1, note: "bored"},
  { date: "2010-08-23T12:23", rating: 4, note: "bored"},
  { date: "2010-08-23T12:46", rating: 4, note: "bored"},
  { date: "2010-08-23T13:04", rating: 6.5, note: "bored"},
];


(function() {
  var format = pv.Format.date("%y-%m-%dT%H:%M");
  frankieroberto.forEach(function(d) { d.date = format.parse(d.date); });
  monkeyhelpr.forEach(function(d) { d.date = format.parse(d.date); });
  andrewpendrick.forEach(function(d) { d.date = format.parse(d.date); });
  jamesb.forEach(function(d) { d.date = format.parse(d.date); });

})();
