## Pao-Ying-Chup Game
judgement <- function(user_hand, com_hand){
    if (user_hand == "hammer"){
        if (com_hand == "hammer"){
            print("draw")
        } else if (com_hand == "scissor") {
            print("You Win!")  
        } else if (com_hand == "paper") {
            print("You lose")
        }
    } else if (user_hand == "scissor"){
        if (com_hand == "scissor"){
            print("draw")
        } else if (com_hand == "paper") {
            print("You Win!")    
        } else if (com_hand == "hammer") {
            print("You lose")
        }
    } else if (user_hand == "paper"){
        if (com_hand == "paper"){
            print("draw")
        } else if (com_hand == "hammer") {
            print("You Win!")
        } else if (com_hand == "scissor") {
            print("You lose")
        }
    }
}
game <- function() {
    ##variable
    hands <- c("hammer", "scissor", "paper")
    user_score <- 0
    computer_score <- 0

    ##Intro to game
    print("Hello, welcome to the game!")
    username <- readline("What's your name: ")
    print("Let's have fun")
## function
    while (TRUE) {
        flush.console()
        ## input
        user_hand <- (readline("What's you choose:"))
        if(user_hand == "stop"){
            print("Thank you for playing")
            break
        }else if( user_hand == "hammer" | user_hand == "paper" | user_hand ==  "scissor" ){
            hands = c("hammer","paper","scissor")
            human_hand = user_hand
            com_hand = sample(hands,1)
            print(paste("your hand :",human_hand))
            print(paste("com hand :",com_hand))

            result <- judgement(user_hand, com_hand)
            if (result == "You Win!"){
                user_score <-user_score +1
                print("results : Win!")
            } else if ( result == "draw"){
                print("results : Draw!")
            } else if  (result == "You lose"){
                computer_score <- computer_score +1
                print("results : Lose!")
            }
            print(paste("your score :",user_score,"; bot score :", computer_score))
        }else {
                print("Recheck your typo")
                break
        }
    }
}
