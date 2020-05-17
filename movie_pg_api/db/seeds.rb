# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
# Movie.destroy_all
puts "Your data is destroyed"

10.times do
    User.create(username:Faker::Name.first_name.downcase, email: Faker::Internet.email, password: '1234', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, imageurl: "https://dl.airtable.com/.attachmentThumbnails/1ee9b5b0a9245281bd7857835ef256d8/ebb993b2" )
end


Movie.create(title: "Dream Horse" , overview:  "A barmaid recruits her husband and a group of others to assist her in training a racehorse in the Welsh countryside.", poster_path:  "/f8pl8xxIqDM8nYXdUuRdr5Ye9Le.jpg", tmdb_id: 603206);
Movie.create(title: "Judy & Punch" , overview:  "In the anarchic town of Seaside, nowhere near the sea, puppeteers Judy and Punch are trying to resurrect their marionette show. The show is a hit due to Judy's superior puppeteering but Punch's driving ambition and penchant for whisky lead to a inevitable tragedy that Judy must avenge.", poster_path:  "/a0WRxfrVjPNelq7UuRoRnIZWn5A.jpg", tmdb_id: 506554);
Movie.create(title: "The High Note" , overview:  "Set in the dazzling world of the LA music scene comes the story of Grace Davis, a superstar whose talent, and ego, have reached unbelievable heights. Maggie is Grace’s overworked personal assistant who’s stuck running errands, but still aspires to her childhood dream of becoming a music producer. When Grace’s manager presents her with a choice that could alter the course of her career, Maggie and Grace come up with a plan that could change their lives forever.", poster_path:  "/uCDcQbfIKY4oTPd6tbghloFm7Gi.jpg", tmdb_id: 606679);
Movie.create(title: "Altar Rock" , overview:  "A thriller inspired by the Boston Marathon bombing in 2013.", poster_path:  "/4jhvgS0sOisNa0kGr8pRE3ZEhCa.jpg", tmdb_id: 463870);
Movie.create(title: "True History of the Kelly Gang" , overview:  "Set against the badlands of colonial Australia where the English rule with a bloody fist and the Irish endure, Ned Kelly discovers he comes from a line of Irish rebels—an uncompromising army of cross dressing bandits immortalised for terrorising their oppressors back in Ireland. Nurtured by the notorious bushranger, Harry Power and fuelled by the unfair arrest of his mother, Kelly recruits a wild bunch of warriors to plot one of the most audacious attacks of anarchy and rebellion the country has ever seen.", poster_path:  "/eVyESHnWiTY1el8DEWbYMVW3K5k.jpg", tmdb_id: 501395);
Movie.create(title: "Bad Trip" , overview:  "Two best friends embark on a cross-country road trip pulling hidden-camera pranks on the unsuspecting public.", poster_path:  "/8wGq9UpJ85irxQcEmSxiQH4Z3ta.jpg", tmdb_id: 578908);
Movie.create(title: "Endings, Beginnings" , overview:  "An artist dumps her longtime boyfriend, but her attempt to take a break from dating ends when she quickly finds herself in two passionate romances.", poster_path:  "/5yfJDjTp6n8QXN0M9aGCYpqahXZ.jpg", tmdb_id: 554908);
Movie.create(title: "Enemy Lines" , overview:  "In the frozen, war torn landscape of occupied Poland during World War II, a crack team of allied commandos are sent on a deadly mission behind enemy lines to extract a rocket scientist from the hands of the Nazis.", poster_path:  "/vG8qBkByy9naORB6zahcntIC2N.jpg", tmdb_id: 679796);
Movie.create(title: "The Incredible Jake Parker" , overview:  "Six months ago, Jake Parker was on top of the world as a platinum-selling singer, songwriter, and pop music sensation. Now, Jake faces the biggest challenge not just of his career but of his entire life: recovering from anorexia.", poster_path:  "/mFvc0MVO4SqY9bz4mEVum97oCX5.jpg", tmdb_id: 623326);
Movie.create(title: "Home Sweet Home" , overview:  "Bored with her social butterfly lifestyle, Victoria Tremont longs to find that special someone. Naturally, when a handsome stranger walks into the coffee shop where she works, she turns on the charm. But when he fails to respond to her flirting the way men usually do, she’s perplexed. She finds out that he runs a ministry that builds affordable housing, and sees that if she wants to get his attention, all she has to do is volunteer. So what if it’s a faith-based ministry. Pretending to be a “church person” isn’t any different than pretending to like sports or a guy’s friends, right?", poster_path:  "/mTimdmBNmax8WGtBDuIz8VSlDD7.jpg", tmdb_id: 661881);
# Movie.create(title: "Blackbird" , overview:  `Troubled secret agent "Blackbird" abruptly retires from service and opens a luxurious nightclub in the Caribbean to escape the dark shadows of his past. An old flame arrives and reignites love in his life but she brings danger with her.`, poster_path:  "/lD4csmePPwAS5kFIyyBVkn3TBMJ.jpg", tmdb_id: 534134);
Movie.create(title: "Fatima" , overview:  "In 1917, outside the parish of Fátima, Portugal, a 10-year-old girl and her two younger cousins witness multiple visitations of the Virgin Mary, who tells them that only prayer and suffering will bring an end to World War I.  As secularist government officials and Church leaders try to force the children to recant their story, word of the sighting spreads across the country, inspiring religious pilgrims to flock to the site in hopes of witnessing a miracle.", poster_path:  "/az3Y2JEpPoYABV9jxcQzLUzk0ea.jpg", tmdb_id: 520318);
Movie.create(title: "Walkaway Joe" , overview:  "A young boy named Dallas, who goes on a search for his pool-hustling father after he abandons their family. Dallas is determined to bring his father home when he meets Joe Haley, a drifter wrestling with a past he'd rather forget, who feels responsible for Dallas' safety and reluctantly takes him in.", poster_path:  "/j9Z8GAqPIrhEvEp8gW6mAyUHm8n.jpg", tmdb_id: 553593);
Movie.create(title: "Stardust" , overview:  "David Bowie went to America for the first time to promote his third album, The Man Who Sold the World. There, he embarked on a coast-to-coast publicity tour. During this tour, Bowie came up with the idea of his iconic Ziggy Stardust character, inspired by artists like Iggy Pop and Lou Reed.", poster_path:  "/kOYqehzeODm55OnFwqMWpY9ehlf.jpg", tmdb_id: 579400);
Movie.create(title: "Arkansas" , overview:  "Kyle and Swin live by the orders of an Arkansas-based drug kingpin named Frog, whom they've never met. But when a deal goes horribly wrong, the consequences are deadly.", poster_path:  "/qemMV4gdqLghSYFDSsaMFLXW7Cq.jpg", tmdb_id: 560204);
Movie.create(title: "The Wretched" , overview:  "A rebellious teenage boy embarks on a gutsy crusade to stop the terrifying evil he suspects has possessed his neighbor in this bone-chilling occult thriller.", poster_path:  "/RCEEHj36F9zVBYJUhLdkTCzMsC.jpg", tmdb_id: 605804);
Movie.create(title: "Run Sweetheart Run" , overview:  "A woman tries to get home alive after her blind date turns violent and goes chasing her through out Los Angeles.", poster_path:  "null", tmdb_id: 532870);
Movie.create(title: "Driftless" , overview:  "When a state government shutdown closes parks on 4th of July weekend, Park Ranger Nova Abbey must protect the park from the people, and the people from each other.", poster_path:  "/dd5tKFvwkmmpQWJh6SY4lzR6Zhl.jpg", tmdb_id: 691228);
Movie.create(title: "John Lewis: Good Trouble" , overview:  "Documentary chronicling John Lewis' 60-plus years of social activism and legislative action using interviews, rare archival footage.", poster_path:  "/aKrsLQcd6BRPzBQx2yLArAvv2UR.jpg", tmdb_id: 675467);
Movie.create(title: "How to Build a Girl" , overview:  "The journey of Midlands teenager Johanna Morrigan, who reinvents herself as Dolly Wilde: fast-talking, lady sex-adventurer, moves to London, and gets a job as music critic in the hope of saving her poverty stricken family in Wolverhampton. Based on Caitlin Moran's bestselling semi-autobiographical novel.", poster_path:  "/4nIupI8oN8tyistI8fDoN6vryeE.jpg", tmdb_id: 572299);

Journal.create(text:'Test1', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Journal.create(text:'Test2', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Journal.create(text:'Test3', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Journal.create(text:'Test4', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Journal.create(text:'Test5', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Journal.create(text:'Test6', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Journal.create(text:'Test7', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Journal.create(text:'Test8', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Journal.create(text:'Test9', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Journal.create(text:'Test10', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)

Review.create(comment:'Test1', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment:'Test2', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment:'Test3', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment:'Test4', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment:'Test5', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment:'Test6', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment:'Test7', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment:'Test8', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment:'Test9', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
Review.create(comment:'Test10', user_id: User.all.sample.id, movie_id: Movie.all.sample.id)

Trivium.create(text:'Test1', movie_id: Movie.all.sample.id)
Trivium.create(text:'Test2', movie_id: Movie.all.sample.id)
Trivium.create(text:'Test3', movie_id: Movie.all.sample.id)
Trivium.create(text:'Test4', movie_id: Movie.all.sample.id)
Trivium.create(text:'Test5', movie_id: Movie.all.sample.id)
Trivium.create(text:'Test6', movie_id: Movie.all.sample.id)
Trivium.create(text:'Test7', movie_id: Movie.all.sample.id)
Trivium.create(text:'Test8', movie_id: Movie.all.sample.id)
Trivium.create(text:'Test9', movie_id: Movie.all.sample.id)
Trivium.create(text:'Test10', movie_id: Movie.all.sample.id)

puts "User Data Created"