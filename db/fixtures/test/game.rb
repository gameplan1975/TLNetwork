User.seed(:id,
  { id: 1,
    name: 'user1',
    email: 'use@user.jp',
  },
  { id: 2,
  name: 'user1',
  email: 'use@user.jp',
},
)
User.seed(:id,
  { id: 1,
    name: 'user1',
    email: 'use@user.jp',
  },
  { id: 2,
  name: 'user1',
  email: 'use@user.jp',
},
)

Player.seed(:id,
  { id: 1,
    game: "0",
    correct: "0",
  },
  { id: 2,
  game: "0",
  correct: "0",
  },
  { id: 3,
  game: "0",
  correct: "0",
  },
)

Genre.seed(:id,
  { id: 1,
    name: "世界史",
    user_id: "1"
  },
  { id: 2,
  name: "日本史",
  user_id: "1"
  },
  { id: ３,
  name: "IT",
  user_id: "1"
  },
)


Question.seed(:id,
  { id: 1,
    name: "できごと１",
    user_id: "1"
    memo: "うんちく"
    year: "1901"
    month: "1"
  },
  { id: 2,
  name: "できごと2",
  user_id: "1"
  memo: "うんちく"
  year: "1902"
  month: "1"
  },
  { id: 3,
  name: "できごと3",
  user_id: "1"
  memo: "うんちく"
  year: "1903"
  month: "1"
  },
  { id: 4,
  name: "できごと１",
  user_id: "1"
  memo: "うんちく"
  year: "1904"
  month: "1"
  },
  { id: 5,
  name: "できごと5",
  user_id: "1"
  memo: "うんちく"
  year: "1905"
  month: "1"
  },
  { id: 6,
  name: "できごと6",
  user_id: "1"
  memo: "うんちく"
  year: "1906"
  month: "1"
  },
  { id: 7,
  name: "できごと7",
  user_id: "1"
  memo: "うんちく"
  year: "1907"
  month: "1"
  },
  { id: 8,
  name: "できごと8",
  user_id: "1"
  memo: "うんちく"
  year: "1908"
  month: "1"
  },
  { id: 9,
  name: "できごと9",
  user_id: "1"
  memo: "うんちく"
  year: "1909"
  month: "1"
  },
  { id: 10,
  name: "できごと10",
  user_id: "1"
  memo: "うんちく"
  year: "1910"
  month: "1"
  },
  { id: 11,
  name: "できごと１1",
  user_id: "1"
  memo: "うんちく"
  year: "1911"
  month: "1"
  },
)