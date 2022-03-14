module TeamDictionary
  extend ActiveSupport::Concern

  included do
    TEAMS = [
        {
            "name": "Abilene Christian",
            "kenpom_name": "Abilene Christian",
            "nbadraft_name": nil,
            "espn_id": "2000",
            "538": "Abilene Chr.",
        },
        {
            "name": "Air Force",
            "kenpom_name": "Air Force",
            "nbadraft_name": nil,
            "espn_id": "2005"
        },
        {
            "name": "Akron",
            "kenpom_name": "Akron",
            "nbadraft_name": nil,
            "espn_id": "2006",
            "538": "Akron",
        },
        {
            "name": "Alabama",
            "kenpom_name": "Alabama",
            "nbadraft_name": "Alabama",
            "espn_id": "333",
            "538": 'Alabama'
        },
        {
            "name": "Alabama A&M",
            "kenpom_name": "Alabama A&M",
            "nbadraft_name": nil,
            "espn_id": "2010"
        },
        {
            "name": "Alabama St.",
            "kenpom_name": "Alabama St.",
            "nbadraft_name": nil,
            "espn_id": "2011"
        },
        {
            "name": "Albany",
            "kenpom_name": "Albany",
            "nbadraft_name": nil,
            "espn_id": "399"
        },
        {
            "name": "Alcorn St.",
            "kenpom_name": "Alcorn St.",
            "nbadraft_name": nil,
            "espn_id": "2016"
        },
        {
            "name": "American",
            "kenpom_name": "American",
            "nbadraft_name": nil,
            "espn_id": "44"
        },
        {
            "name": "Appalachian St.",
            "kenpom_name": "Appalachian St.",
            "nbadraft_name": nil,
            "espn_id": "2026",
            "538": "App. St.",
        },
        {
            "name": "Arizona",
            "kenpom_name": "Arizona",
            "nbadraft_name": "Arizona",
            "espn_id": "12",
            "538": "Arizona",
        },
        {
            "name": "Arizona St.",
            "kenpom_name": "Arizona St.",
            "nbadraft_name": "Arizona St.",
            "espn_id": "9"
        },
        {
            "name": "Arkansas",
            "kenpom_name": "Arkansas",
            "nbadraft_name": nil,
            "espn_id": "8",
            "538": "Arkansas"
        },
        {
            "name": "Arkansas Pine Bluff",
            "kenpom_name": "Arkansas Pine Bluff",
            "nbadraft_name": nil,
            "espn_id": "2029"
        },
        {
            "name": "Arkansas St.",
            "kenpom_name": "Arkansas St.",
            "nbadraft_name": nil,
            "espn_id": "2032"
        },
        {
            "name": "Army",
            "kenpom_name": "Army",
            "nbadraft_name": nil,
            "espn_id": "349"
        },
        {
            "name": "Auburn",
            "kenpom_name": "Auburn",
            "nbadraft_name": "Auburn",
            "espn_id": "2",
            "538": "Auburn",
        },
        {
            "name": "Austin Peay",
            "kenpom_name": "Austin Peay",
            "nbadraft_name": nil,
            "espn_id": "2046"
        },
        {
            "name": "BYU",
            "kenpom_name": "BYU",
            "nbadraft_name": "BYU",
            "espn_id": "252",
            "538": "BYU",
        },
        {
            "name": "Ball St.",
            "kenpom_name": "Ball St.",
            "nbadraft_name": nil,
            "espn_id": "2050"
        },
        {
            "name": "Baylor",
            "kenpom_name": "Baylor",
            "nbadraft_name": "Baylor",
            "espn_id": "239",
            "538": "Baylor",
        },
        {
            "name": "Bellarmine",
            "kenpom_name": "Bellarmine",
            "nbadraft_name": nil,
            "espn_id": "91"
        },
        {
            "name": "Belmont",
            "kenpom_name": "Belmont",
            "nbadraft_name": nil,
            "espn_id": "2057"
        },
        {
            "name": "Bethune Cookman",
            "kenpom_name": "Bethune Cookman",
            "nbadraft_name": nil,
            "espn_id": "2065"
        },
        {
            "name": "Binghamton",
            "kenpom_name": "Binghamton",
            "nbadraft_name": nil,
            "espn_id": "2066"
        },
        {
            "name": "Boise St.",
            "kenpom_name": "Boise St.",
            "nbadraft_name": nil,
            "espn_id": "68",
            "538": "Boise State",
        },
        {
            "name": "Boston College",
            "kenpom_name": "Boston College",
            "nbadraft_name": nil,
            "espn_id": "103"
        },
        {
            "name": "Boston University",
            "kenpom_name": "Boston University",
            "nbadraft_name": nil,
            "espn_id": "104"
        },
        {
            "name": "Bowling Green",
            "kenpom_name": "Bowling Green",
            "nbadraft_name": nil,
            "espn_id": "189"
        },
        {
            "name": "Bradley",
            "kenpom_name": "Bradley",
            "nbadraft_name": nil,
            "espn_id": "71"
        },
        {
            "name": "Brown",
            "kenpom_name": "Brown",
            "nbadraft_name": nil,
            "espn_id": "225"
        },
        {
            "name": "Bryant",
            "kenpom_name": "Bryant",
            "nbadraft_name": nil,
            "espn_id": "2803",
            "538": "Bryant",
        },
        {
            "name": "Bucknell",
            "kenpom_name": "Bucknell",
            "nbadraft_name": nil,
            "espn_id": "2083"
        },
        {
            "name": "Buffalo",
            "kenpom_name": "Buffalo",
            "nbadraft_name": nil,
            "espn_id": "2084"
        },
        {
            "name": "Butler",
            "kenpom_name": "Butler",
            "nbadraft_name": nil,
            "espn_id": "2086"
        },
        {
            "name": "Cal Baptist",
            "kenpom_name": "Cal Baptist",
            "nbadraft_name": nil,
            "espn_id": "2856"
        },
        {
            "name": "Cal Poly",
            "kenpom_name": "Cal Poly",
            "nbadraft_name": nil,
            "espn_id": "13"
        },
        {
            "name": "Cal St. Bakersfield",
            "kenpom_name": "Cal St. Bakersfield",
            "nbadraft_name": nil,
            "espn_id": "2934"
        },
        {
            "name": "Cal St. Fullerton",
            "kenpom_name": "Cal St. Fullerton",
            "nbadraft_name": nil,
            "espn_id": "2239",
            "538": "CSU-Full.",
        },
        {
            "name": "Cal St. Northridge",
            "kenpom_name": "Cal St. Northridge",
            "nbadraft_name": nil,
            "espn_id": "2463"
        },
        {
            "name": "California",
            "kenpom_name": "California",
            "nbadraft_name": nil,
            "espn_id": "25"
        },
        {
            "name": "Campbell",
            "kenpom_name": "Campbell",
            "nbadraft_name": nil,
            "espn_id": "2097"
        },
        {
            "name": "Canisius",
            "kenpom_name": "Canisius",
            "nbadraft_name": nil,
            "espn_id": "2099"
        },
        {
            "name": "Central Arkansas",
            "kenpom_name": "Central Arkansas",
            "nbadraft_name": nil,
            "espn_id": "2110"
        },
        {
            "name": "Central Connecticut",
            "kenpom_name": "Central Connecticut",
            "nbadraft_name": nil,
            "espn_id": "2115"
        },
        {
            "name": "Central Michigan",
            "kenpom_name": "Central Michigan",
            "nbadraft_name": nil,
            "espn_id": "2117"
        },
        {
            "name": "Charleston",
            "kenpom_name": "Charleston",
            "nbadraft_name": nil,
            "espn_id": "232"
        },
        {
            "name": "Charleston Southern",
            "kenpom_name": "Charleston Southern",
            "nbadraft_name": nil,
            "espn_id": "2127"
        },
        {
            "name": "Charlotte",
            "kenpom_name": "Charlotte",
            "nbadraft_name": "Charlotte",
            "espn_id": "2429"
        },
        {
            "name": "Chattanooga",
            "kenpom_name": "Chattanooga",
            "nbadraft_name": nil,
            "espn_id": "236",
            "538": "Chatt.",
        },
        {
            "name": "Chicago St.",
            "kenpom_name": "Chicago St.",
            "nbadraft_name": nil,
            "espn_id": "2130"
        },
        {
            "name": "Cincinnati",
            "kenpom_name": "Cincinnati",
            "nbadraft_name": nil,
            "espn_id": "2132"
        },
        {
            "name": "Clemson",
            "kenpom_name": "Clemson",
            "nbadraft_name": nil,
            "espn_id": "228",
            "538": "Clemson",
        },
        {
            "name": "Cleveland St.",
            "kenpom_name": "Cleveland St.",
            "nbadraft_name": nil,
            "espn_id": "325",
            "538": "Cleveland St.",
        },
        {
            "name": "Coastal Carolina",
            "kenpom_name": "Coastal Carolina",
            "nbadraft_name": nil,
            "espn_id": "324"
        },
        {
            "name": "Colgate",
            "kenpom_name": "Colgate",
            "nbadraft_name": nil,
            "espn_id": "2142",
            "538": "Colgate"
        },
        {
            "name": "Colorado",
            "kenpom_name": "Colorado",
            "nbadraft_name": "Colorado",
            "espn_id": "38",
            "538": "Colorado"
        },
        {
            "name": "Colorado St.",
            "kenpom_name": "Colorado St.",
            "nbadraft_name": nil,
            "espn_id": "36",
            "538": "Colorado St.",
        },
        {
            "name": "Columbia",
            "kenpom_name": "Columbia",
            "nbadraft_name": nil,
            "espn_id": "171"
        },
        {
            "name": "Connecticut",
            "kenpom_name": "Connecticut",
            "nbadraft_name": "UConn",
            "espn_id": "41",
            "538": "UConn"
        },
        {
            "name": "Coppin St.",
            "kenpom_name": "Coppin St.",
            "nbadraft_name": nil,
            "espn_id": "2154"
        },
        {
            "name": "Cornell",
            "kenpom_name": "Cornell",
            "nbadraft_name": nil,
            "espn_id": "172"
        },
        {
            "name": "Creighton",
            "kenpom_name": "Creighton",
            "nbadraft_name": nil,
            "espn_id": "156",
            "538": "Creighton"
        },
        {
            "name": "Dartmouth",
            "kenpom_name": "Dartmouth",
            "nbadraft_name": nil,
            "espn_id": "159"
        },
        {
            "name": "Davidson",
            "kenpom_name": "Davidson",
            "nbadraft_name": nil,
            "espn_id": "2166",
            "538": "Davidson",
        },
        {
            "name": "Dayton",
            "kenpom_name": "Dayton",
            "nbadraft_name": "Dayton",
            "espn_id": "2168"
        },
        {
            "name": "DePaul",
            "kenpom_name": "DePaul",
            "nbadraft_name": nil,
            "espn_id": "305"
        },
        {
            "name": "Delaware",
            "kenpom_name": "Delaware",
            "nbadraft_name": nil,
            "espn_id": "48",
            "538": "Delaware",
        },
        {
            "name": "Delaware St.",
            "kenpom_name": "Delaware St.",
            "nbadraft_name": nil,
            "espn_id": "2169"
        },
        {
            "name": "Denver",
            "kenpom_name": "Denver",
            "nbadraft_name": nil,
            "espn_id": "2172"
        },
        {
            "name": "Detroit Mercy",
            "kenpom_name": "Detroit Mercy",
            "nbadraft_name": "Detroit",
            "espn_id": "2174"
        },
        {
            "name": "Dixie St.",
            "kenpom_name": "Dixie St.",
            "nbadraft_name": nil,
            "espn_id": "3101"
        },
        {
            "name": "Drake",
            "kenpom_name": "Drake",
            "nbadraft_name": nil,
            "espn_id": "2181",
            "538": "Drake",
        },
        {
            "name": "Drexel",
            "kenpom_name": "Drexel",
            "nbadraft_name": nil,
            "espn_id": "2182",
            "538": "Drexel",
        },
        {
            "name": "Duke",
            "kenpom_name": "Duke",
            "nbadraft_name": "Duke",
            "espn_id": "150",
            "538": "Duke",
        },
        {
            "name": "Duquesne",
            "kenpom_name": "Duquesne",
            "nbadraft_name": nil,
            "espn_id": "2184"
        },
        {
            "name": "East Carolina",
            "kenpom_name": "East Carolina",
            "nbadraft_name": nil,
            "espn_id": "151"
        },
        {
            "name": "East Tennessee St.",
            "kenpom_name": "East Tennessee St.",
            "nbadraft_name": nil,
            "espn_id": "2193"
        },
        {
            "name": "Eastern Illinois",
            "kenpom_name": "Eastern Illinois",
            "nbadraft_name": nil,
            "espn_id": "2197"
        },
        {
            "name": "Eastern Kentucky",
            "kenpom_name": "Eastern Kentucky",
            "nbadraft_name": nil,
            "espn_id": "2198"
        },
        {
            "name": "Eastern Michigan",
            "kenpom_name": "Eastern Michigan",
            "nbadraft_name": nil,
            "espn_id": "2199"
        },
        {
            "name": "Eastern Washington",
            "kenpom_name": "Eastern Washington",
            "nbadraft_name": nil,
            "espn_id": "331",
            "538": "E. Wash.",
        },
        {
            "name": "Elon",
            "kenpom_name": "Elon",
            "nbadraft_name": nil,
            "espn_id": "2210"
        },
        {
            "name": "Evansville",
            "kenpom_name": "Evansville",
            "nbadraft_name": nil,
            "espn_id": "339"
        },
        {
            "name": "FIU",
            "kenpom_name": "FIU",
            "nbadraft_name": nil,
            "espn_id": "2229"
        },
        {
            "name": "Fairfield",
            "kenpom_name": "Fairfield",
            "nbadraft_name": nil,
            "espn_id": "2217"
        },
        {
            "name": "Fairleigh Dickinson",
            "kenpom_name": "Fairleigh Dickinson",
            "nbadraft_name": nil,
            "espn_id": "161"
        },
        {
            "name": "Florida",
            "kenpom_name": "Florida",
            "nbadraft_name": "Florida",
            "espn_id": "57",
            "538": "Florida",
        },
        {
            "name": "Florida A&M",
            "kenpom_name": "Florida A&M",
            "nbadraft_name": nil,
            "espn_id": "50"
        },
        {
            "name": "Florida Atlantic",
            "kenpom_name": "Florida Atlantic",
            "nbadraft_name": nil,
            "espn_id": "2226"
        },
        {
            "name": "Florida Gulf Coast",
            "kenpom_name": "Florida Gulf Coast",
            "nbadraft_name": nil,
            "espn_id": "526"
        },
        {
            "name": "Florida St.",
            "kenpom_name": "Florida St.",
            "nbadraft_name": "Florida St.",
            "espn_id": "52",
            "538": "Florida State",
        },
        {
            "name": "Fordham",
            "kenpom_name": "Fordham",
            "nbadraft_name": nil,
            "espn_id": "2230"
        },
        {
            "name": "Fresno St.",
            "kenpom_name": "Fresno St.",
            "nbadraft_name": "Freson St.",
            "espn_id": "278"
        },
        {
            "name": "Furman",
            "kenpom_name": "Furman",
            "nbadraft_name": nil,
            "espn_id": "231"
        },
        {
            "name": "Gardner Webb",
            "kenpom_name": "Gardner Webb",
            "nbadraft_name": nil,
            "espn_id": "2241"
        },
        {
            "name": "George Mason",
            "kenpom_name": "George Mason",
            "nbadraft_name": nil,
            "espn_id": "2244"
        },
        {
            "name": "George Washington",
            "kenpom_name": "George Washington",
            "nbadraft_name": nil,
            "espn_id": "45"
        },
        {
            "name": "Georgetown",
            "kenpom_name": "Georgetown",
            "nbadraft_name": "Georgetown",
            "espn_id": "46",
            "538": "Georgetown",
        },
        {
            "name": "Georgia",
            "kenpom_name": "Georgia",
            "nbadraft_name": nil,
            "espn_id": "61"
        },
        {
            "name": "Georgia Southern",
            "kenpom_name": "Georgia Southern",
            "nbadraft_name": nil,
            "espn_id": "290"
        },
        {
            "name": "Georgia St.",
            "kenpom_name": "Georgia St.",
            "nbadraft_name": nil,
            "espn_id": "2247",
            "538": "Georgia St.",
        },
        {
            "name": "Georgia Tech",
            "kenpom_name": "Georgia Tech",
            "nbadraft_name": "Georgia Tech",
            "espn_id": "59",
            "538": "Georgia Tech",
        },
        {
            "name": "Gonzaga",
            "kenpom_name": "Gonzaga",
            "nbadraft_name": "Gonzaga",
            "espn_id": "2250",
            "538": "Gonzaga",
        },
        {
            "name": "Grambling St.",
            "kenpom_name": "Grambling St.",
            "nbadraft_name": nil,
            "espn_id": "2755"
        },
        {
            "name": "Grand Canyon",
            "kenpom_name": "Grand Canyon",
            "nbadraft_name": nil,
            "espn_id": "2253",
            "538": "Gr. Canyon",
        },
        {
            "name": "Green Bay",
            "kenpom_name": "Green Bay",
            "nbadraft_name": nil,
            "espn_id": "2739"
        },
        {
            "name": "Hampton",
            "kenpom_name": "Hampton",
            "nbadraft_name": nil,
            "espn_id": "2261"
        },
        {
            "name": "Hartford",
            "kenpom_name": "Hartford",
            "nbadraft_name": nil,
            "espn_id": "42",
            "538": "Hartford",
        },
        {
            "name": "Harvard",
            "kenpom_name": "Harvard",
            "nbadraft_name": nil,
            "espn_id": "108"
        },
        {
            "name": "Hawaii",
            "kenpom_name": "Hawaii",
            "nbadraft_name": nil,
            "espn_id": "62"
        },
        {
            "name": "High Point",
            "kenpom_name": "High Point",
            "nbadraft_name": nil,
            "espn_id": "2272"
        },
        {
            "name": "Hofstra",
            "kenpom_name": "Hofstra",
            "nbadraft_name": nil,
            "espn_id": "2275"
        },
        {
            "name": "Holy Cross",
            "kenpom_name": "Holy Cross",
            "nbadraft_name": nil,
            "espn_id": "107"
        },
        {
            "name": "Houston",
            "kenpom_name": "Houston",
            "nbadraft_name": nil,
            "espn_id": "248",
            "538": "Houston",
        },
        {
            "name": "Houston Baptist",
            "kenpom_name": "Houston Baptist",
            "nbadraft_name": nil,
            "espn_id": "2277"
        },
        {
            "name": "Howard",
            "kenpom_name": "Howard",
            "nbadraft_name": nil,
            "espn_id": "47"
        },
        {
            "name": "IUPUI",
            "kenpom_name": "IUPUI",
            "nbadraft_name": nil,
            "espn_id": "85"
        },
        {
            "name": "Idaho",
            "kenpom_name": "Idaho",
            "nbadraft_name": nil,
            "espn_id": "70"
        },
        {
            "name": "Idaho St.",
            "kenpom_name": "Idaho St.",
            "nbadraft_name": nil,
            "espn_id": "304"
        },
        {
            "name": "Illinois",
            "kenpom_name": "Illinois",
            "nbadraft_name": "Illinois",
            "espn_id": "356",
            "538": "Illinois"
        },
        {
            "name": "Illinois Chicago",
            "kenpom_name": "Illinois Chicago",
            "nbadraft_name": nil,
            "espn_id": "82"
        },
        {
            "name": "Illinois St.",
            "kenpom_name": "Illinois St.",
            "nbadraft_name": nil,
            "espn_id": "2287"
        },
        {
            "name": "Incarnate Word",
            "kenpom_name": "Incarnate Word",
            "nbadraft_name": nil,
            "espn_id": "2916"
        },
        {
            "name": "Indiana",
            "kenpom_name": "Indiana",
            "nbadraft_name": "Indiana",
            "espn_id": "84",
            "538": "Indiana",
        },
        {
            "name": "Indiana St.",
            "kenpom_name": "Indiana St.",
            "nbadraft_name": nil,
            "espn_id": "282"
        },
        {
            "name": "Iona",
            "kenpom_name": "Iona",
            "nbadraft_name": nil,
            "espn_id": "314",
            "538": "Iona",
        },
        {
            "name": "Iowa",
            "kenpom_name": "Iowa",
            "nbadraft_name": "Iowa",
            "espn_id": "2294",
            "538": "Iowa",
        },
        {
            "name": "Iowa St.",
            "kenpom_name": "Iowa St.",
            "nbadraft_name": "Iowa St.",
            "espn_id": "66",
            "538": "Iowa State",
        },
        {
            "name": "Jackson St.",
            "kenpom_name": "Jackson St.",
            "nbadraft_name": nil,
            "espn_id": "2296"
        },
        {
            "name": "Jacksonville",
            "kenpom_name": "Jacksonville",
            "nbadraft_name": nil,
            "espn_id": "294"
        },
        {
            "name": "Jacksonville St.",
            "kenpom_name": "Jacksonville St.",
            "nbadraft_name": nil,
            "espn_id": "55",
            "538": "J'ville State",
        },
        {
            "name": "James Madison",
            "kenpom_name": "James Madison",
            "nbadraft_name": nil,
            "espn_id": "256"
        },
        {
            "name": "Kansas",
            "kenpom_name": "Kansas",
            "nbadraft_name": "Kansas",
            "espn_id": "2305",
            "538": "Kansas",
        },
        {
            "name": "Kansas St.",
            "kenpom_name": "Kansas St.",
            "nbadraft_name": nil,
            "espn_id": "2306"
        },
        {
            "name": "Kennesaw St.",
            "kenpom_name": "Kennesaw St.",
            "nbadraft_name": nil,
            "espn_id": "338"
        },
        {
            "name": "Kent St.",
            "kenpom_name": "Kent St.",
            "nbadraft_name": nil,
            "espn_id": "2309"
        },
        {
            "name": "Kentucky",
            "kenpom_name": "Kentucky",
            "nbadraft_name": "Kentucky",
            "espn_id": "96",
            "538": "Kentucky"
        },
        {
            "name": "LIU",
            "kenpom_name": "LIU",
            "nbadraft_name": nil,
            "espn_id": "112358"
        },
        {
            "name": "LSU",
            "kenpom_name": "LSU",
            "nbadraft_name": "LSU",
            "espn_id": "99",
            "538": "LSU",
        },
        {
            "name": "La Salle",
            "kenpom_name": "La Salle",
            "nbadraft_name": nil,
            "espn_id": "2325"
        },
        {
            "name": "Lafayette",
            "kenpom_name": "Lafayette",
            "nbadraft_name": nil,
            "espn_id": "322"
        },
        {
            "name": "Lamar",
            "kenpom_name": "Lamar",
            "nbadraft_name": nil,
            "espn_id": "2320"
        },
        {
            "name": "Lehigh",
            "kenpom_name": "Lehigh",
            "nbadraft_name": nil,
            "espn_id": "2329"
        },
        {
            "name": "Liberty",
            "kenpom_name": "Liberty",
            "nbadraft_name": "Liberty",
            "espn_id": "2335",
            "538": "Liberty",
        },
        {
            "name": "Lipscomb",
            "kenpom_name": "Lipscomb",
            "nbadraft_name": nil,
            "espn_id": "288"
        },
        {
            "name": "Little Rock",
            "kenpom_name": "Little Rock",
            "nbadraft_name": nil,
            "espn_id": "2031"
        },
        {
            "name": "Long Beach St.",
            "kenpom_name": "Long Beach St.",
            "nbadraft_name": nil,
            "espn_id": "299"
        },
        {
            "name": "Longwood",
            "kenpom_name": "Longwood",
            "nbadraft_name": nil,
            "espn_id": "2344",
            "538": "Longwood",
        },
        {
            "name": "Louisiana",
            "kenpom_name": "Louisiana",
            "nbadraft_name": nil,
            "espn_id": "309"
        },
        {
            "name": "Louisiana Monroe",
            "kenpom_name": "Louisiana Monroe",
            "nbadraft_name": nil,
            "espn_id": "2433"
        },
        {
            "name": "Louisiana Tech",
            "kenpom_name": "Louisiana Tech",
            "nbadraft_name": nil,
            "espn_id": "2348"
        },
        {
            "name": "Louisville",
            "kenpom_name": "Louisville",
            "nbadraft_name": nil,
            "espn_id": "97"
        },
        {
            "name": "Loyola Chicago",
            "kenpom_name": "Loyola Chicago",
            "nbadraft_name": nil,
            "espn_id": "2350",
            "538": "Loyola (IL)",
        },
        {
            "name": "Loyola MD",
            "kenpom_name": "Loyola MD",
            "nbadraft_name": nil,
            "espn_id": "2352"
        },
        {
            "name": "Loyola Marymount",
            "kenpom_name": "Loyola Marymount",
            "nbadraft_name": nil,
            "espn_id": "2351"
        },
        {
            "name": "Maine",
            "kenpom_name": "Maine",
            "nbadraft_name": nil,
            "espn_id": "311"
        },
        {
            "name": "Manhattan",
            "kenpom_name": "Manhattan",
            "nbadraft_name": nil,
            "espn_id": "2363"
        },
        {
            "name": "Marist",
            "kenpom_name": "Marist",
            "nbadraft_name": nil,
            "espn_id": "2368"
        },
        {
            "name": "Marquette",
            "kenpom_name": "Marquette",
            "nbadraft_name": nil,
            "espn_id": "269",
            "538": "Marquette",
        },
        {
            "name": "Marshall",
            "kenpom_name": "Marshall",
            "nbadraft_name": "Marshall",
            "espn_id": "276"
        },
        {
            "name": "Maryland",
            "kenpom_name": "Maryland",
            "nbadraft_name": "Maryland",
            "espn_id": "120",
            "538": "Maryland",
        },
        {
            "name": "Maryland Eastern Shore",
            "kenpom_name": "Maryland Eastern Shore",
            "nbadraft_name": nil,
            "espn_id": "2379"
        },
        {
            "name": "Massachusetts",
            "kenpom_name": "Massachusetts",
            "nbadraft_name": nil,
            "espn_id": "113"
        },
        {
            "name": "McNeese St.",
            "kenpom_name": "McNeese St.",
            "nbadraft_name": nil,
            "espn_id": "2377"
        },
        {
            "name": "Memphis",
            "kenpom_name": "Memphis",
            "nbadraft_name": "Memphis",
            "espn_id": "235",
            "538": "Memphis",
        },
        {
            "name": "Mercer",
            "kenpom_name": "Mercer",
            "nbadraft_name": nil,
            "espn_id": "2382"
        },
        {
            "name": "Merrimack",
            "kenpom_name": "Merrimack",
            "nbadraft_name": nil,
            "espn_id": "2771"
        },
        {
            "name": "Miami FL",
            "kenpom_name": "Miami FL",
            "nbadraft_name": "Miami",
            "espn_id": "2390",
            "538": "Miami",
        },
        {
            "name": "Miami OH",
            "kenpom_name": "Miami OH",
            "nbadraft_name": nil,
            "espn_id": "193"
        },
        {
            "name": "Michigan",
            "kenpom_name": "Michigan",
            "nbadraft_name": "Michigan",
            "espn_id": "130",
            "538": "Michigan",
        },
        {
            "name": "Michigan St.",
            "kenpom_name": "Michigan St.",
            "nbadraft_name": "Michigan St.",
            "espn_id": "127",
            "538": "Michigan St.",
        },
        {
            "name": "Middle Tennessee",
            "kenpom_name": "Middle Tennessee",
            "nbadraft_name": nil,
            "espn_id": "2393"
        },
        {
            "name": "Milwaukee",
            "kenpom_name": "Milwaukee",
            "nbadraft_name": "Wisconsin–Milwaukee",
            "espn_id": "270"
        },
        {
            "name": "Minnesota",
            "kenpom_name": "Minnesota",
            "nbadraft_name": nil,
            "espn_id": "135"
        },
        {
            "name": "Mississippi",
            "kenpom_name": "Mississippi",
            "nbadraft_name": nil,
            "espn_id": "145"
        },
        {
            "name": "Mississippi St.",
            "kenpom_name": "Mississippi St.",
            "nbadraft_name": "Mississippi St.",
            "espn_id": "344"
        },
        {
            "name": "Mississippi Valley St.",
            "kenpom_name": "Mississippi Valley St.",
            "nbadraft_name": nil,
            "espn_id": "2400"
        },
        {
            "name": "Missouri",
            "kenpom_name": "Missouri",
            "nbadraft_name": nil,
            "espn_id": "142",
            "538": "Missouri",
        },
        {
            "name": "Missouri St.",
            "kenpom_name": "Missouri St.",
            "nbadraft_name": nil,
            "espn_id": "2623"
        },
        {
            "name": "Monmouth",
            "kenpom_name": "Monmouth",
            "nbadraft_name": nil,
            "espn_id": "2405"
        },
        {
            "name": "Montana",
            "kenpom_name": "Montana",
            "nbadraft_name": nil,
            "espn_id": "149"
        },
        {
            "name": "Montana St.",
            "kenpom_name": "Montana St.",
            "nbadraft_name": nil,
            "espn_id": "147",
            "538": "Montana St.",
        },
        {
            "name": "Morehead St.",
            "kenpom_name": "Morehead St.",
            "nbadraft_name": nil,
            "espn_id": "2413",
            "538": "Morehead St.",
        },
        {
            "name": "Morgan St.",
            "kenpom_name": "Morgan St.",
            "nbadraft_name": nil,
            "espn_id": "2415"
        },
        {
            "name": "Mount St. Mary's",
            "kenpom_name": "Mount St. Mary's",
            "nbadraft_name": nil,
            "espn_id": "116",
            "538": "Mt. St. Mary's",
        },
        {
            "name": "Murray St.",
            "kenpom_name": "Murray St.",
            "nbadraft_name": nil,
            "espn_id": "93",
            "538": "Murray St.",
        },
        {
            "name": "N.C. State",
            "kenpom_name": "N.C. State",
            "nbadraft_name": "NC State",
            "espn_id": "152"
        },
        {
            "name": "NJIT",
            "kenpom_name": "NJIT",
            "nbadraft_name": nil,
            "espn_id": "2885"
        },
        {
            "name": "Navy",
            "kenpom_name": "Navy",
            "nbadraft_name": nil,
            "espn_id": "2426"
        },
        {
            "name": "Nebraska",
            "kenpom_name": "Nebraska",
            "nbadraft_name": "Nebraska",
            "espn_id": "158"
        },
        {
            "name": "Nebraska Omaha",
            "kenpom_name": "Nebraska Omaha",
            "nbadraft_name": nil,
            "espn_id": "2437"
        },
        {
            "name": "Nevada",
            "kenpom_name": "Nevada",
            "nbadraft_name": nil,
            "espn_id": "2440"
        },
        {
            "name": "New Hampshire",
            "kenpom_name": "New Hampshire",
            "nbadraft_name": nil,
            "espn_id": "160"
        },
        {
            "name": "New Mexico",
            "kenpom_name": "New Mexico",
            "nbadraft_name": nil,
            "espn_id": "167"
        },
        {
            "name": "New Mexico St.",
            "kenpom_name": "New Mexico St.",
            "nbadraft_name": nil,
            "espn_id": "166",
            "538": "NM State",
        },
        {
            "name": "New Orleans",
            "kenpom_name": "New Orleans",
            "nbadraft_name": nil,
            "espn_id": "2443"
        },
        {
            "name": "Niagara",
            "kenpom_name": "Niagara",
            "nbadraft_name": nil,
            "espn_id": "315"
        },
        {
            "name": "Nicholls St.",
            "kenpom_name": "Nicholls St.",
            "nbadraft_name": nil,
            "espn_id": "2447"
        },
        {
            "name": "Norfolk St.",
            "kenpom_name": "Norfolk St.",
            "nbadraft_name": nil,
            "espn_id": "2450",
            "538": "Norfolk St.",
        },
        {
            "name": "North Alabama",
            "kenpom_name": "North Alabama",
            "nbadraft_name": nil,
            "espn_id": "2453"
        },
        {
            "name": "North Carolina",
            "kenpom_name": "North Carolina",
            "nbadraft_name": "North Carolina",
            "espn_id": "153",
            "538": "UNC",
        },
        {
            "name": "North Carolina A&T",
            "kenpom_name": "North Carolina A&T",
            "nbadraft_name": nil,
            "espn_id": "2448"
        },
        {
            "name": "North Carolina Central",
            "kenpom_name": "North Carolina Central",
            "nbadraft_name": nil,
            "espn_id": "2428"
        },
        {
            "name": "North Dakota",
            "kenpom_name": "North Dakota",
            "nbadraft_name": nil,
            "espn_id": "155"
        },
        {
            "name": "North Dakota St.",
            "kenpom_name": "North Dakota St.",
            "nbadraft_name": nil,
            "espn_id": "2449"
        },
        {
            "name": "North Florida",
            "kenpom_name": "North Florida",
            "nbadraft_name": nil,
            "espn_id": "2454"
        },
        {
            "name": "North Texas",
            "kenpom_name": "North Texas",
            "nbadraft_name": nil,
            "espn_id": "249",
            "538": "North Texas",
        },
        {
            "name": "Northeastern",
            "kenpom_name": "Northeastern",
            "nbadraft_name": nil,
            "espn_id": "111"
        },
        {
            "name": "Northern Arizona",
            "kenpom_name": "Northern Arizona",
            "nbadraft_name": nil,
            "espn_id": "2464"
        },
        {
            "name": "Northern Colorado",
            "kenpom_name": "Northern Colorado",
            "nbadraft_name": nil,
            "espn_id": "2458"
        },
        {
            "name": "Northern Illinois",
            "kenpom_name": "Northern Illinois",
            "nbadraft_name": nil,
            "espn_id": "2459"
        },
        {
            "name": "Northern Iowa",
            "kenpom_name": "Northern Iowa",
            "nbadraft_name": "Northern Iowa",
            "espn_id": "2460"
        },
        {
            "name": "Northern Kentucky",
            "kenpom_name": "Northern Kentucky",
            "nbadraft_name": nil,
            "espn_id": "94"
        },
        {
            "name": "Northwestern",
            "kenpom_name": "Northwestern",
            "nbadraft_name": nil,
            "espn_id": "77"
        },
        {
            "name": "Northwestern St.",
            "kenpom_name": "Northwestern St.",
            "nbadraft_name": nil,
            "espn_id": "2466"
        },
        {
            "name": "Notre Dame",
            "kenpom_name": "Notre Dame",
            "nbadraft_name": "Notre Dame",
            "espn_id": "87",
            "538": "Notre Dame",
        },
        {
            "name": "Oakland",
            "kenpom_name": "Oakland",
            "nbadraft_name": nil,
            "espn_id": "2473"
        },
        {
            "name": "Ohio",
            "kenpom_name": "Ohio",
            "nbadraft_name": nil,
            "espn_id": "195",
            "538": "Ohio",
        },
        {
            "name": "Ohio St.",
            "kenpom_name": "Ohio St.",
            "nbadraft_name": "Ohio St.",
            "espn_id": "194",
            "538": "Ohio State",
        },
        {
            "name": "Oklahoma",
            "kenpom_name": "Oklahoma",
            "nbadraft_name": nil,
            "espn_id": "201",
            "538": "Oklahoma",
        },
        {
            "name": "Oklahoma St.",
            "kenpom_name": "Oklahoma St.",
            "nbadraft_name": "Oklahoma State",
            "espn_id": "197",
            "538": "Okla. State",
        },
        {
            "name": "Old Dominion",
            "kenpom_name": "Old Dominion",
            "nbadraft_name": nil,
            "espn_id": "295"
        },
        {
            "name": "Oral Roberts",
            "kenpom_name": "Oral Roberts",
            "nbadraft_name": nil,
            "espn_id": "198",
            "538": "Oral Roberts",
        },
        {
            "name": "Oregon",
            "kenpom_name": "Oregon",
            "nbadraft_name": "Oregon",
            "espn_id": "2483",
            "538": "Oregon",
        },
        {
            "name": "Oregon St.",
            "kenpom_name": "Oregon St.",
            "nbadraft_name": nil,
            "espn_id": "204",
            "538": "Oregon St.",
        },
        {
            "name": "Pacific",
            "kenpom_name": "Pacific",
            "nbadraft_name": nil,
            "espn_id": "279"
        },
        {
            "name": "Penn",
            "kenpom_name": "Penn",
            "nbadraft_name": nil,
            "espn_id": "219"
        },
        {
            "name": "Penn St.",
            "kenpom_name": "Penn St.",
            "nbadraft_name": nil,
            "espn_id": "213"
        },
        {
            "name": "Pepperdine",
            "kenpom_name": "Pepperdine",
            "nbadraft_name": nil,
            "espn_id": "2492"
        },
        {
            "name": "Pittsburgh",
            "kenpom_name": "Pittsburgh",
            "nbadraft_name": nil,
            "espn_id": "221"
        },
        {
            "name": "Portland",
            "kenpom_name": "Portland",
            "nbadraft_name": nil,
            "espn_id": "2501"
        },
        {
            "name": "Portland St.",
            "kenpom_name": "Portland St.",
            "nbadraft_name": nil,
            "espn_id": "2502"
        },
        {
            "name": "Prairie View A&M",
            "kenpom_name": "Prairie View A&M",
            "nbadraft_name": nil,
            "espn_id": "2504"
        },
        {
            "name": "Presbyterian",
            "kenpom_name": "Presbyterian",
            "nbadraft_name": nil,
            "espn_id": "2506"
        },
        {
            "name": "Princeton",
            "kenpom_name": "Princeton",
            "nbadraft_name": nil,
            "espn_id": "163"
        },
        {
            "name": "Providence",
            "kenpom_name": "Providence",
            "nbadraft_name": nil,
            "espn_id": "2507",
            "538": "Providence",
        },
        {
            "name": "Purdue",
            "kenpom_name": "Purdue",
            "nbadraft_name": "Purdue",
            "espn_id": "2509",
            "538": "Purdue",
        },
        {
            "name": "Purdue Fort Wayne",
            "kenpom_name": "Purdue Fort Wayne",
            "nbadraft_name": nil,
            "espn_id": "2870"
        },
        {
            "name": "Quinnipiac",
            "kenpom_name": "Quinnipiac",
            "nbadraft_name": nil,
            "espn_id": "2514"
        },
        {
            "name": "Radford",
            "kenpom_name": "Radford",
            "nbadraft_name": nil,
            "espn_id": "2515"
        },
        {
            "name": "Rhode Island",
            "kenpom_name": "Rhode Island",
            "nbadraft_name": nil,
            "espn_id": "227"
        },
        {
            "name": "Rice",
            "kenpom_name": "Rice",
            "nbadraft_name": nil,
            "espn_id": "242"
        },
        {
            "name": "Richmond",
            "kenpom_name": "Richmond",
            "nbadraft_name": nil,
            "espn_id": "257",
            "538": "Richmond",
        },
        {
            "name": "Rider",
            "kenpom_name": "Rider",
            "nbadraft_name": nil,
            "espn_id": "2520"
        },
        {
            "name": "Robert Morris",
            "kenpom_name": "Robert Morris",
            "nbadraft_name": nil,
            "espn_id": "2523"
        },
        {
            "name": "Rutgers",
            "kenpom_name": "Rutgers",
            "nbadraft_name": nil,
            "espn_id": "164",
            "538": "Rutgers",
        },
        {
            "name": "SIU Edwardsville",
            "kenpom_name": "SIU Edwardsville",
            "nbadraft_name": nil,
            "espn_id": "2565"
        },
        {
            "name": "SMU",
            "kenpom_name": "SMU",
            "nbadraft_name": nil,
            "espn_id": "2567"
        },
        {
            "name": "Sacramento St.",
            "kenpom_name": "Sacramento St.",
            "nbadraft_name": nil,
            "espn_id": "16"
        },
        {
            "name": "Sacred Heart",
            "kenpom_name": "Sacred Heart",
            "nbadraft_name": nil,
            "espn_id": "2529"
        },
        {
            "name": "Saint Joseph's",
            "kenpom_name": "Saint Joseph's",
            "nbadraft_name": "St. Joseph's",
            "espn_id": "2603"
        },
        {
            "name": "Saint Louis",
            "kenpom_name": "Saint Louis",
            "nbadraft_name": nil,
            "espn_id": "139"
        },
        {
            "name": "Saint Mary's",
            "kenpom_name": "Saint Mary's",
            "nbadraft_name": nil,
            "espn_id": "2608",
            "538": "St. Mary's",
        },
        {
            "name": "Saint Peter's",
            "kenpom_name": "Saint Peter's",
            "nbadraft_name": nil,
            "espn_id": "2612",
            "538": "Saint Peter's",
        },
        {
            "name": "Sam Houston St.",
            "kenpom_name": "Sam Houston St.",
            "nbadraft_name": nil,
            "espn_id": "2534"
        },
        {
            "name": "Samford",
            "kenpom_name": "Samford",
            "nbadraft_name": nil,
            "espn_id": "2535"
        },
        {
            "name": "San Diego",
            "kenpom_name": "San Diego",
            "nbadraft_name": nil,
            "espn_id": "301",
            "538": "SDSU",
        },
        {
            "name": "San Diego St.",
            "kenpom_name": "San Diego St.",
            "nbadraft_name": nil,
            "espn_id": "21",
            "538": "SDSU",
        },
        {
            "name": "San Francisco",
            "kenpom_name": "San Francisco",
            "nbadraft_name": "San Francisc0",
            "espn_id": "2539",
            "538": "San Fran.",
        },
        {
            "name": "San Jose St.",
            "kenpom_name": "San Jose St.",
            "nbadraft_name": nil,
            "espn_id": "23"
        },
        {
            "name": "Santa Clara",
            "kenpom_name": "Santa Clara",
            "nbadraft_name": nil,
            "espn_id": "2541"
        },
        {
            "name": "Seattle",
            "kenpom_name": "Seattle",
            "nbadraft_name": nil,
            "espn_id": "2547"
        },
        {
            "name": "Seton Hall",
            "kenpom_name": "Seton Hall",
            "nbadraft_name": "Seton Hall",
            "espn_id": "2550",
            "538": "Seton Hall",
        },
        {
            "name": "Siena",
            "kenpom_name": "Siena",
            "nbadraft_name": nil,
            "espn_id": "2561"
        },
        {
            "name": "South Alabama",
            "kenpom_name": "South Alabama",
            "nbadraft_name": nil,
            "espn_id": "6"
        },
        {
            "name": "South Carolina",
            "kenpom_name": "South Carolina",
            "nbadraft_name": nil,
            "espn_id": "2579"
        },
        {
            "name": "South Carolina St.",
            "kenpom_name": "South Carolina St.",
            "nbadraft_name": nil,
            "espn_id": "2569"
        },
        {
            "name": "South Dakota",
            "kenpom_name": "South Dakota",
            "nbadraft_name": nil,
            "espn_id": "233"
        },
        {
            "name": "South Dakota St.",
            "kenpom_name": "South Dakota St.",
            "nbadraft_name": nil,
            "espn_id": "2571",
            "538": "S. Dakota St.",
        },
        {
            "name": "South Florida",
            "kenpom_name": "South Florida",
            "nbadraft_name": nil,
            "espn_id": "58"
        },
        {
            "name": "Southeast Missouri St.",
            "kenpom_name": "Southeast Missouri St.",
            "nbadraft_name": nil,
            "espn_id": "2546"
        },
        {
            "name": "Southeastern Louisiana",
            "kenpom_name": "Southeastern Louisiana",
            "nbadraft_name": nil,
            "espn_id": "2545"
        },
        {
            "name": "Southern",
            "kenpom_name": "Southern",
            "nbadraft_name": nil,
            "espn_id": "2582"
        },
        {
            "name": "Southern Illinois",
            "kenpom_name": "Southern Illinois",
            "nbadraft_name": nil,
            "espn_id": "79"
        },
        {
            "name": "Southern Miss",
            "kenpom_name": "Southern Miss",
            "nbadraft_name": nil,
            "espn_id": "2572"
        },
        {
            "name": "Southern Utah",
            "kenpom_name": "Southern Utah",
            "nbadraft_name": nil,
            "espn_id": "253"
        },
        {
            "name": "St. Bonaventure",
            "kenpom_name": "St. Bonaventure",
            "nbadraft_name": "St. Bonaventure",
            "espn_id": "179",
            "538": "St. Bon.",
        },
        {
            "name": "St. Francis NY",
            "kenpom_name": "St. Francis NY",
            "nbadraft_name": nil,
            "espn_id": "2597"
        },
        {
            "name": "St. Francis PA",
            "kenpom_name": "St. Francis PA",
            "nbadraft_name": nil,
            "espn_id": "2598"
        },
        {
            "name": "St. John's",
            "kenpom_name": "St. John's",
            "nbadraft_name": "St. Johns",
            "espn_id": "2599"
        },
        {
            "name": "St. Thomas",
            "kenpom_name": "St. Thomas",
            "nbadraft_name": nil,
            "espn_id": "2900"
        },
        {
            "name": "Stanford",
            "kenpom_name": "Stanford",
            "nbadraft_name": "Stanford",
            "espn_id": "24"
        },
        {
            "name": "Stephen F. Austin",
            "kenpom_name": "Stephen F. Austin",
            "nbadraft_name": nil,
            "espn_id": "2617"
        },
        {
            "name": "Stetson",
            "kenpom_name": "Stetson",
            "nbadraft_name": nil,
            "espn_id": "56"
        },
        {
            "name": "Stony Brook",
            "kenpom_name": "Stony Brook",
            "nbadraft_name": nil,
            "espn_id": "2619"
        },
        {
            "name": "Syracuse",
            "kenpom_name": "Syracuse",
            "nbadraft_name": nil,
            "espn_id": "183",
            "538": "Syracuse"
        },
        {
            "name": "TCU",
            "kenpom_name": "TCU",
            "nbadraft_name": "TCU",
            "espn_id": "2628",
            "538": "TCU",
        },
        {
            "name": "Tarleton St.",
            "kenpom_name": "Tarleton St.",
            "nbadraft_name": nil,
            "espn_id": "2627"
        },
        {
            "name": "Temple",
            "kenpom_name": "Temple",
            "nbadraft_name": nil,
            "espn_id": "218"
        },
        {
            "name": "Tennessee",
            "kenpom_name": "Tennessee",
            "nbadraft_name": "Tennessee",
            "espn_id": "2633",
            "538": "Tennessee",
        },
        {
            "name": "Tennessee Martin",
            "kenpom_name": "Tennessee Martin",
            "nbadraft_name": nil,
            "espn_id": "2630"
        },
        {
            "name": "Tennessee St.",
            "kenpom_name": "Tennessee St.",
            "nbadraft_name": nil,
            "espn_id": "2634"
        },
        {
            "name": "Tennessee Tech",
            "kenpom_name": "Tennessee Tech",
            "nbadraft_name": nil,
            "espn_id": "2635"
        },
        {
            "name": "Texas",
            "kenpom_name": "Texas",
            "nbadraft_name": "Texas",
            "espn_id": "251",
            "538": "Texas",
        },
        {
            "name": "Texas A&M",
            "kenpom_name": "Texas A&M",
            "nbadraft_name": "Texas A&M",
            "espn_id": "245"
        },
        {
            "name": "Texas A&M Corpus Chris",
            "kenpom_name": "Texas A&M Corpus Chris",
            "nbadraft_name": nil,
            "espn_id": "357",
            "538": "TX A&M-CC",
        },
        {
            "name": "Texas Southern",
            "kenpom_name": "Texas Southern",
            "nbadraft_name": nil,
            "espn_id": "2640",
            "538": "TXSO",
        },
        {
            "name": "Texas St.",
            "kenpom_name": "Texas St.",
            "nbadraft_name": nil,
            "espn_id": "326"
        },
        {
            "name": "Texas Tech",
            "kenpom_name": "Texas Tech",
            "nbadraft_name": "Texas Tech",
            "espn_id": "2641",
            "538": "Texas Tech",
        },
        {
            "name": "The Citadel",
            "kenpom_name": "The Citadel",
            "nbadraft_name": nil,
            "espn_id": "2643"
        },
        {
            "name": "Toledo",
            "kenpom_name": "Toledo",
            "nbadraft_name": "Toledo",
            "espn_id": "2649"
        },
        {
            "name": "Towson",
            "kenpom_name": "Towson",
            "nbadraft_name": nil,
            "espn_id": "119"
        },
        {
            "name": "Troy",
            "kenpom_name": "Troy",
            "nbadraft_name": nil,
            "espn_id": "2653"
        },
        {
            "name": "Tulane",
            "kenpom_name": "Tulane",
            "nbadraft_name": nil,
            "espn_id": "2655"
        },
        {
            "name": "Tulsa",
            "kenpom_name": "Tulsa",
            "nbadraft_name": nil,
            "espn_id": "202"
        },
        {
            "name": "UAB",
            "kenpom_name": "UAB",
            "nbadraft_name": nil,
            "espn_id": "5",
            "538": "UAB",
        },
        {
            "name": "UC Davis",
            "kenpom_name": "UC Davis",
            "nbadraft_name": nil,
            "espn_id": "302"
        },
        {
            "name": "UC Irvine",
            "kenpom_name": "UC Irvine",
            "nbadraft_name": nil,
            "espn_id": "300"
        },
        {
            "name": "UC Riverside",
            "kenpom_name": "UC Riverside",
            "nbadraft_name": nil,
            "espn_id": "27"
        },
        {
            "name": "UC San Diego",
            "kenpom_name": "UC San Diego",
            "nbadraft_name": nil,
            "espn_id": "28"
        },
        {
            "name": "UC Santa Barbara",
            "kenpom_name": "UC Santa Barbara",
            "nbadraft_name": nil,
            "espn_id": "2540",
            "538": "UCSB",
        },
        {
            "name": "UCF",
            "kenpom_name": "UCF",
            "nbadraft_name": "Central Florida",
            "espn_id": "2116"
        },
        {
            "name": "UCLA",
            "kenpom_name": "UCLA",
            "nbadraft_name": "UCLA",
            "espn_id": "26",
            "538": "UCLA",
        },
        {
            "name": "UMBC",
            "kenpom_name": "UMBC",
            "nbadraft_name": nil,
            "espn_id": "2378"
        },
        {
            "name": "UMKC",
            "kenpom_name": "UMKC",
            "nbadraft_name": nil,
            "espn_id": "140"
        },
        {
            "name": "UMass Lowell",
            "kenpom_name": "UMass Lowell",
            "nbadraft_name": nil,
            "espn_id": "2349"
        },
        {
            "name": "UNC Asheville",
            "kenpom_name": "UNC Asheville",
            "nbadraft_name": nil,
            "espn_id": "2427"
        },
        {
            "name": "UNC Greensboro",
            "kenpom_name": "UNC Greensboro",
            "nbadraft_name": nil,
            "espn_id": "2430",
            "538": "UNC-Greens.",
        },
        {
            "name": "UNC Wilmington",
            "kenpom_name": "UNC Wilmington",
            "nbadraft_name": nil,
            "espn_id": "350"
        },
        {
            "name": "UNLV",
            "kenpom_name": "UNLV",
            "nbadraft_name": nil,
            "espn_id": "2439"
        },
        {
            "name": "USC",
            "kenpom_name": "USC",
            "nbadraft_name": nil,
            "espn_id": "30",
            "538": "USC",
        },
        {
            "name": "USC Upstate",
            "kenpom_name": "USC Upstate",
            "nbadraft_name": nil,
            "espn_id": "2908"
        },
        {
            "name": "UT Arlington",
            "kenpom_name": "UT Arlington",
            "nbadraft_name": nil,
            "espn_id": "250"
        },
        {
            "name": "UT Rio Grande Valley",
            "kenpom_name": "UT Rio Grande Valley",
            "nbadraft_name": nil,
            "espn_id": "292"
        },
        {
            "name": "UTEP",
            "kenpom_name": "UTEP",
            "nbadraft_name": nil,
            "espn_id": "2638"
        },
        {
            "name": "UTSA",
            "kenpom_name": "UTSA",
            "nbadraft_name": nil,
            "espn_id": "2636"
        },
        {
            "name": "Utah",
            "kenpom_name": "Utah",
            "nbadraft_name": nil,
            "espn_id": "254"
        },
        {
            "name": "Utah St.",
            "kenpom_name": "Utah St.",
            "nbadraft_name": nil,
            "espn_id": "328",
            "538": "Utah State",
        },
        {
            "name": "Utah Valley",
            "kenpom_name": "Utah Valley",
            "nbadraft_name": nil,
            "espn_id": "3084"
        },
        {
            "name": "VCU",
            "kenpom_name": "VCU",
            "nbadraft_name": "VCU",
            "espn_id": "2670",
            "538": "VCU",
        },
        {
            "name": "VMI",
            "kenpom_name": "VMI",
            "nbadraft_name": nil,
            "espn_id": "2678"
        },
        {
            "name": "Valparaiso",
            "kenpom_name": "Valparaiso",
            "nbadraft_name": nil,
            "espn_id": "2674"
        },
        {
            "name": "Vanderbilt",
            "kenpom_name": "Vanderbilt",
            "nbadraft_name": nil,
            "espn_id": "238"
        },
        {
            "name": "Vermont",
            "kenpom_name": "Vermont",
            "nbadraft_name": nil,
            "espn_id": "261",
            "538": "Vermont",
        },
        {
            "name": "Villanova",
            "kenpom_name": "Villanova",
            "nbadraft_name": "Villanova",
            "espn_id": "222",
            "538": "Villanova",
        },
        {
            "name": "Virginia",
            "kenpom_name": "Virginia",
            "nbadraft_name": nil,
            "espn_id": "258",
            "538": "Virginia",
        },
        {
            "name": "Virginia Tech",
            "kenpom_name": "Virginia Tech",
            "nbadraft_name": "Virginia Tech",
            "espn_id": "259",
            "538": "Virginia Tech",
        },
        {
            "name": "Wagner",
            "kenpom_name": "Wagner",
            "nbadraft_name": nil,
            "espn_id": "2681"
        },
        {
            "name": "Wake Forest",
            "kenpom_name": "Wake Forest",
            "nbadraft_name": "Wake Forest",
            "espn_id": "154"
        },
        {
            "name": "Washington",
            "kenpom_name": "Washington",
            "nbadraft_name": nil,
            "espn_id": "264"
        },
        {
            "name": "Washington St.",
            "kenpom_name": "Washington St.",
            "nbadraft_name": nil,
            "espn_id": "265"
        },
        {
            "name": "Weber St.",
            "kenpom_name": "Weber St.",
            "nbadraft_name": nil,
            "espn_id": "2692"
        },
        {
            "name": "West Virginia",
            "kenpom_name": "West Virginia",
            "nbadraft_name": nil,
            "espn_id": "277",
            "538": "W. Virginia",
        },
        {
            "name": "Western Carolina",
            "kenpom_name": "Western Carolina",
            "nbadraft_name": nil,
            "espn_id": "2717"
        },
        {
            "name": "Western Illinois",
            "kenpom_name": "Western Illinois",
            "nbadraft_name": nil,
            "espn_id": "2710"
        },
        {
            "name": "Western Kentucky",
            "kenpom_name": "Western Kentucky",
            "nbadraft_name": "Western Kentucky",
            "espn_id": "98"
        },
        {
            "name": "Western Michigan",
            "kenpom_name": "Western Michigan",
            "nbadraft_name": nil,
            "espn_id": "2711"
        },
        {
            "name": "Wichita St.",
            "kenpom_name": "Wichita St.",
            "nbadraft_name": "Wichita State",
            "espn_id": "2724",
            "538": "Wichita St.",
        },
        {
            "name": "William & Mary",
            "kenpom_name": "William & Mary",
            "nbadraft_name": nil,
            "espn_id": "2729"
        },
        {
            "name": "Winthrop",
            "kenpom_name": "Winthrop",
            "nbadraft_name": nil,
            "espn_id": "2737",
            "538": "Winthrop",
        },
        {
            "name": "Wisconsin",
            "kenpom_name": "Wisconsin",
            "nbadraft_name": "Wisconsin",
            "espn_id": "275",
            "538": "Wisconsin",
        },
        {
            "name": "Wofford",
            "kenpom_name": "Wofford",
            "nbadraft_name": nil,
            "espn_id": "2747"
        },
        {
            "name": "Wright St.",
            "kenpom_name": "Wright St.",
            "nbadraft_name": nil,
            "espn_id": "2750",
            "538": "Wright State",
        },
        {
            "name": "Wyoming",
            "kenpom_name": "Wyoming",
            "nbadraft_name": nil,
            "espn_id": "2751",
            "538": "Wyoming",
        },
        {
            "name": "Xavier",
            "kenpom_name": "Xavier",
            "nbadraft_name": nil,
            "espn_id": "2752"
        },
        {
            "name": "Yale",
            "kenpom_name": "Yale",
            "nbadraft_name": nil,
            "espn_id": "43",
            "538": "Yale",
        },
        {
            "name": "Youngstown St.",
            "kenpom_name": "Youngstown St.",
            "nbadraft_name": nil,
            "espn_id": "2754"
        }
    ].map(&:symbolize_keys).freeze
  end
end
