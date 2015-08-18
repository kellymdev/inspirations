Author.destroy_all
Quote.destroy_all
Category.destroy_all

Author.create([
                { name: "Arthur Ashe" },
                { name: "Audrey Hepburn" },
                { name: "Carl Sandburg" },
                { name: "Christopher Reeve" },
                { name: "Eleanor Roosevelt" },
                { name: "Fred DeVito" },
                { name: "George Eliot" },
                { name: "Helen Keller" },
                { name: "Henry David Thoreau" },
                { name: "Joseph Campbell" },
                { name: "Leo Buscaglia" },
                { name: "Milton Berle" },
                { name: "Napoleon Hill" },
                { name: "Norman Vaughan" },
                { name: "Og Mandino" },
                { name: "Oprah Winfrey" },
                { name: "Ralph Waldo Emerson" },
                { name: "Thomas Alva Edison" },
                { name: "Wayne Gretzky" },
                { name: "Zig Ziglar" }
              ])

dreams = Category.create(title: "Dreams")
dreams.quotes.create([
                      {
                        quote_text: "A goal is a dream with a deadline.",
                        author: Author.find_by_name("Napoleon Hill")
                      },
                      {
                        quote_text: "Dream big and dare to fail.",
                        author: Author.find_by_name("Norman Vaughan")
                      },
                      {
                        quote_text: "Follow your bliss and the universe will open doors where there were only walls.",
                        author: Author.find_by_name("Joseph Campbell")
                      },
                      {
                        quote_text: "Go confidently in the direction of your dreams.  Live the life you have imagined.",
                        author: Author.find_by_name("Henry David Thoreau")
                      },
                      {
                        quote_text: "If opportunity doesn't knock, build a door.",
                        author: Author.find_by_name("Milton Berle")
                      },
                      {
                        quote_text: "If you can dream it, you can achieve it.",
                        author: Author.find_by_name("Zig Ziglar")
                      },
                      {
                        quote_text: "Nothing happens unless first we dream.",
                        author: Author.find_by_name("Carl Sandburg")
                      },
                      {
                        quote_text: "So many of our dreams at first seem impossible, then they seem improbable, and then, when we summon the will, they soon become inevitable.",
                        author: Author.find_by_name("Christopher Reeve")
                      },
                      {
                        quote_text: "The future belongs to those who believe in the beauty of their dreams.",
                        author: Author.find_by_name("Eleanor Roosevelt")
                      },
                      {
                        quote_text: "Your talent is God's gift to you. What you do with it is your gift back to God.",
                        author: Author.find_by_name("Leo Buscaglia")
                      }
                    ])

challenges = Category.create(title: "Challenges")
challenges.quotes.create([
                          {
                            quote_text: "Do the one thing you think you cannot do. Fail at it. Try again. Do better the second time. The only people who never tumble are those who never mount the high wire. This is your moment. Own it.",
                            author: Author.find_by_name("Oprah Winfrey")
                          },
                          {
                            quote_text: "Failure will never overtake me if my determination to succeed is strong enough.",
                            author: Author.find_by_name("Og Mandino")
                          },
                          {
                            quote_text: "If it doesn’t challenge you, it doesn’t change you.",
                            author: Author.find_by_name("Fred DeVito")
                          },
                          {
                            quote_text: "Nothing is impossible, the word itself says 'I'm possible'!",
                            author: Author.find_by_name("Audrey Hepburn")
                          },
                          {
                            quote_text: "Our greatest glory is not in never failing, but in rising up every time we fail.",
                            author: Author.find_by_name("Ralph Waldo Emerson")
                          },
                          {
                            quote_text: "Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.",
                            author: Author.find_by_name("Thomas Alva Edison")
                          },
                          {
                            quote_text: "Where there is no struggle, there is no strength.",
                            author: Author.find_by_name("Oprah Winfrey")
                          }
                        ])

success = Category.create(title: "Success")
success.quotes.create([
                        {
                          quote_text: "It is never too late to be what you might have been.",
                          author: Author.find_by_name("George Eliot")
                        },
                        {
                          quote_text: "Life is either a daring adventure or nothing at all.",
                          author: Author.find_by_name("Helen Keller")
                        },
                        {
                          quote_text: "Start where you are. Use what you have. Do what you can.",
                          author: Author.find_by_name("Arthur Ashe")
                        },
                        {
                          quote_text: "You miss 100% of the shots you don’t take.",
                          author: Author.find_by_name("Wayne Gretzky")
                        }
                      ])