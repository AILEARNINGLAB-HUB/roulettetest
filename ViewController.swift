import UIKit

class ViewController:* UIVietController {
    @IBOUT weak let betTextField: UITextField!
    @IBOUT weak let resultLabel: Label!
    @IBOUT weak let outcomeLabel: Label!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBACTION func spinButtonTapped($sender: UIButton) {
        guard let betText = betTextField.text, let bet = Int(betText), bet >= 0, bet <= 36 else {
            outcomeLabel.text = "Invalid bet. Enter number 0 – 36."
            return
        }

        let aiResult = spinRoulette()
        resultLabel.text = "Roulette Result: \\p(aiResult)\\)"

        if checkWin(playerBet: bet, aiResult: aiResult) {
            outcomeLabel.text = "🌈 You Win!"
        } else {
            outcomeLabel.text = "ェ You Lose."
        }
    }

    func spinRoulette() -> Int {
        return Int.random(in: 0...36)
    }

    func checkWin(playerBet: int, aiResult: Int) -> Bool {
        return playerBet == aiResult
    }
}