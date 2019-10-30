
// Instructions:
/*
 Start by pressing trough the introduction screens
 For Example select Week 1 and follow the guided questions for this week.
 You can input info such as if you met your water goal, if you took
 your medications, and if you completed other activites such as taking vitamins.
 
 */











// The code:




import UIKit
import Foundation
import PlaygroundSupport

class MyViewController: UIViewController {
    
    let cardView        = UIView()
    let monthView       = UIView()
    let AnswerButton    = UIView()
    let SAW1            = String()
    let SAW2            = String()
    let titleLabel      = UILabel()
    let titleLabel2     = UILabel()
    let Question1       = UILabel()
    let Answer1         = UIButton()
    let Answer2         = UIButton()
    let Answer3         = UIButton()
    let watchButton     = UIButton()
    let monthButton     = UIButton()
    let animateButton   = UIButton()
    let Week1Button     = UIButton()
    let Week2Button     = UIButton()
    let Week3Button     = UIButton()
    let Week4Button     = UIButton()
    let videoImageView  = UIImageView()
    let label           = UILabel(frame: CGRect(x:0, y:0, width: 200, height: 22))
    let label2          = UILabel(frame: CGRect(x:0, y:0, width: 200, height: 22))
    let label3          = UILabel(frame: CGRect(x:0, y:0, width: 200, height: 22))
    let label4          = UILabel(frame: CGRect(x:0, y:0, width: 200, height: 22))
    
    var cardViewBottomConstraint: NSLayoutConstraint!
    var monthViewBottomConstraint: NSLayoutConstraint!
    var Answer1ButtonBottomConstraint: NSLayoutConstraint!
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
        setupCardView()
        
    }
    
    func setupCardView() {
        view.addSubview(cardView)
        cardView.backgroundColor    = .white
        cardView.layer.cornerRadius = 12
        setupCardViewConstraints()
        setupAnimateButton()
        setupVideoImageView()
        setupTitleLabel()
        setupWatchButton()
        
    }
    
    func setupMonthView(){
        view.addSubview(monthView)
        monthView.backgroundColor    = .blue
        monthView.layer.cornerRadius = 12
        setupmonthViewConstraints()
        
    }
    
    func setupmonthViewConstraints() {
        monthView.translatesAutoresizingMaskIntoConstraints = false
        monthView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        monthView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
        monthView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        monthViewBottomConstraint = monthView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -575)
        monthViewBottomConstraint.isActive = true
        
    }
    
    func setupVideoImageView() {
        cardView.addSubview(videoImageView)
        videoImageView.layer.cornerRadius  = 12
        videoImageView.layer.masksToBounds = true
        videoImageView.image = UIImage(named: "2018-setup.png")
        setVideoImageViewConstraints()
        
    }
    
    func setupTitleLabel() {
        cardView.addSubview(titleLabel)
        titleLabel.text             = "Welcome to Your Health"
        titleLabel.font             = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textColor        = .darkGray
        titleLabel.textAlignment    = .center
        setTitleLabelConstraints()
        
    }
    
    func setupWatchButton() {
        cardView.addSubview(watchButton)
        watchButton.setTitle("Press to Continue", for: .normal)
        watchButton.setTitleColor(.white, for: .normal)
        watchButton.backgroundColor    = .red
        watchButton.layer.cornerRadius = 12
        watchButton.addTarget(self, action: #selector(hideCard), for: .touchUpInside)
        setWatchButtonConstraints()
        
    }
    
    func setupAnimateButton() {
        view.addSubview(animateButton)
        animateButton.setTitle("Tap to Begin Playground", for: .normal)
        animateButton.setTitleColor(.white, for: .normal)
        animateButton.backgroundColor    = .blue
        animateButton.layer.cornerRadius = 12
        animateButton.addTarget(self, action: #selector(animateCard), for: .touchUpInside)
        setAnimateButtonConstraints()
        
        
    }
    
    func setupCardViewConstraints() {
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        cardView.heightAnchor.constraint(equalToConstant: 460).isActive = true
        
        cardViewBottomConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 700)
        cardViewBottomConstraint.isActive = true
        
    }
    
    func setVideoImageViewConstraints() {
        videoImageView.translatesAutoresizingMaskIntoConstraints = false
        videoImageView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
        videoImageView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
        videoImageView.heightAnchor.constraint(equalTo: videoImageView.widthAnchor, multiplier: 9.0/16.0).isActive = true
        videoImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 50).isActive = true
        
    }
    
    func setTitleLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -10).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        titleLabel.topAnchor.constraint(equalTo: videoImageView.bottomAnchor, constant: 18).isActive = true
        
    }
    
    func setWatchButtonConstraints() {
        watchButton.translatesAutoresizingMaskIntoConstraints = false
        watchButton.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
        watchButton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
        watchButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        watchButton.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -20).isActive = true
        
    }
    
    func setAnimateButtonConstraints() {
        animateButton.translatesAutoresizingMaskIntoConstraints = false
        animateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        animateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        animateButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        animateButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
    }
    
    @objc func animateCard() {
        // Hide Animate Button:
        animateButton.setTitle("", for: .normal)
        animateButton.setTitleColor(.black, for: .normal)
        animateButton.backgroundColor     = .black
        cardViewBottomConstraint.constant = -10
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.75, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    // Card Intro 1
    @objc func hideCard() {
        watchButton.isHidden = false
        animateButton.isHidden = true
        titleLabel.text = "Log items such as Water Intake"
        videoImageView.image = UIImage(named: "Water-Intake.jpg")
        watchButton.addTarget(self, action: #selector(addCard2), for: .touchUpInside)
        
    }
    
    //Change Intro 2
    @objc func addCard2() {
        titleLabel.text = "Log items such as Vitamins"
        videoImageView.image = UIImage(named: "Vitamins.png")
        watchButton.addTarget(self, action:
            #selector(addCard3), for: .touchUpInside)
        
    }
    
    //Change Intro 3
    @objc func addCard3() {
        titleLabel.text = "Log items such as Exercise"
        videoImageView.image               = UIImage(named: "Exercise.jpg")
        watchButton.addTarget(self, action:
            #selector(addCard4), for: .touchUpInside)
    }
    
    //Card Intro 4
    @objc func addCard4() {
        titleLabel.text             = "And more..."
        videoImageView.image                = UIImage(named: "more.png")
        watchButton.setTitle("Press to start", for: .normal)
        watchButton.addTarget(self, action:
            #selector(removeCard), for: .touchUpInside)
        watchButton.addTarget(self, action:
            #selector(ShowJanWeek1), for: .touchUpInside)
        
    }
    
    //Change Card Info
    @objc func removeCard() {
        titleLabel.isHidden = true
        videoImageView.isHidden = true
        cardView.isHidden = false
        cardView.backgroundColor    = .white
        //Card View2 Constrains
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90).isActive = true
        cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        cardView.heightAnchor.constraint(equalToConstant: 1960).isActive = true
        cardViewBottomConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 360)
        cardViewBottomConstraint.isActive = true
        //View Colour
        view.backgroundColor = .white
        watchButton.setTitle("Next Month", for: .normal)
        animateButton.isHidden = false
        animateButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        animateButton.setTitle("January", for: .normal)
        animateButton.setTitleColor(.white, for: .normal)
        watchButton.addTarget(self, action:
            #selector(Jan2Feb), for: .touchUpInside)
        Week3Button.setTitle("Week 3", for: .normal)
        Week4Button.setTitle("Week 4", for: .normal)
        
    }
    
    //  Functions to change months
    
    // January to febuary
    @objc func Jan2Feb() {
        animateButton.setTitle("Febuary", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Feb2Mar), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(FebWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(FebWeek2Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(FebWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(FebWeek4Pressed), for: .touchUpInside)
    }
    
    //Febuary to March
    @objc func Feb2Mar() {
        animateButton.setTitle("March", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Mar2Apr), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(MarWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(MarWeek2Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(MarWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(MarWeek4Pressed), for: .touchUpInside)
    }
    
    //March to April
    @objc func Mar2Apr() {
        animateButton.setTitle("April", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Apr2May), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(AprWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(AprWeek2Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(AprWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(AprWeek4Pressed), for: .touchUpInside)
    }
    
    //April to May
    @objc func Apr2May() {
        animateButton.setTitle("May", for: .normal)
        watchButton.addTarget(self, action:
            #selector(May2Jne), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(MayWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(MayWeek2Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(MayWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(MayWeek4Pressed), for: .touchUpInside)
    }
    
    //May to June
    @objc func May2Jne() {
        animateButton.setTitle("June", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Jne2Jly), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(JneWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(JneWeek2Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(JneWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(JneWeek4Pressed), for: .touchUpInside)
    }
    
    //June to July
    @objc func Jne2Jly() {
        animateButton.setTitle("July", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Jly2Aug), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(JlyWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(JlyWeek1Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(JlyWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(JlyWeek4Pressed), for: .touchUpInside)
        
    }
    
    //July to August
    @objc func Jly2Aug() {
        animateButton.setTitle("August", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Aug2Sep), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(AugWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(AugWeek2Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(AugWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(AugWeek4Pressed), for: .touchUpInside)
    }
    
    //August to September
    @objc func Aug2Sep() {
        animateButton.setTitle("September", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Sep2Oct), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(SepWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(SepWeek2Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(SepWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(SepWeek4Pressed), for: .touchUpInside)
    }
    
    //September to October
    @objc func Sep2Oct() {
        animateButton.setTitle("October", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Oct2Nov), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(OctWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(OctWeek2Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(OctWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(OctWeek4Pressed), for: .touchUpInside)
    }
    
    //October to November
    @objc func Oct2Nov() {
        animateButton.setTitle("November", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Nov2Dec), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(NovWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(NovWeek2Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(NovWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(NovWeek4Pressed), for: .touchUpInside)
    }
    
    //November to December
    @objc func Nov2Dec() {
        animateButton.setTitle("December", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Dec2Jan), for: .touchUpInside)
        Week1Button.addTarget(self, action: #selector(DecWeek1Pressed), for: .touchUpInside)
        Week2Button.addTarget(self, action: #selector(DecWeek2Pressed), for: .touchUpInside)
        Week3Button.addTarget(self, action: #selector(DecWeek3Pressed), for: .touchUpInside)
        Week4Button.addTarget(self, action: #selector(DecWeek4Pressed), for: .touchUpInside)
    }
    
    //December to January
    @objc func Dec2Jan() {
        animateButton.setTitle("January", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Jan2Feb), for: .touchUpInside) //Return func to Cycle
        Week1Button.isHidden = false
        Week2Button.isHidden = false
        Week3Button.isHidden = false
        Week4Button.isHidden = false
        label.isHidden       = true
        label4.isHidden      = true
        Week3Button.setTitle("Week 3", for: .normal)
        Week4Button.setTitle("Week 4", for: .normal)

        
        
    }
    //Functions to change Week selector for feelings input
    
    @objc func ShowJanWeek1() {
        //setupMonthView()
        // Week 1
        view.addSubview(Week1Button)
        Week1Button.setTitle("Week1", for: .normal)
        Week1Button.setTitleColor(.white, for: .normal)
        Week1Button.backgroundColor    = .blue
        Week1Button.layer.cornerRadius = 12
        Week1Button.addTarget(self, action: #selector(Week1Pressed), for: .touchUpInside)
        Week3Button.isHidden = false
        Week4Button.isHidden = false
        Week3Button.setTitle("Good", for: .normal)
        Week4Button.setTitle("Not too great", for: .normal)
        setWeek1ButtonConstraints()
        // Week 2
        view.addSubview(Week2Button)
        Week2Button.setTitle("Week2", for: .normal)
        Week2Button.setTitleColor(.white, for: .normal)
        Week2Button.backgroundColor    = .blue
        Week2Button.layer.cornerRadius = 12
        Week2Button.addTarget(self, action: #selector(Week1Pressed), for: .touchUpInside)
        setWeek2ButtonConstraints()
        // Week 3
        view.addSubview(Week3Button)
        Week3Button.setTitle("Week3", for: .normal)
        Week3Button.setTitleColor(.white, for: .normal)
        Week3Button.backgroundColor    = .blue
        Week3Button.layer.cornerRadius = 12
        Week3Button.addTarget(self, action: #selector(Week1Pressed), for: .touchUpInside)
        setWeek3ButtonConstraints()
        // Week 4
        view.addSubview(Week4Button)
        Week4Button.setTitle("Week4", for: .normal)
        Week4Button.setTitleColor(.white, for: .normal)
        Week4Button.backgroundColor    = .blue
        Week4Button.layer.cornerRadius = 12
        Week4Button.addTarget(self, action: #selector(Week1Pressed), for: .touchUpInside)
        setWeek4ButtonConstraints()
        
        
    }
    
    
    @objc func ShowFebWeek() {
        Week1Button.addTarget(self, action: #selector(FebWeek1Pressed), for: .touchUpInside)
        Week1Pressed()
        
        
    }
    
    @objc func FebWeek1Pressed() {
        animateButton.setTitle("Feb Week 1", for: .normal)
        Week1Pressed()
        
    }
    @objc func FebWeek2Pressed() {
        animateButton.setTitle("Feb Week 2", for: .normal)
        Week1Pressed()
        
    }
    @objc func FebWeek3Pressed() {
        animateButton.setTitle("Feb Week 3", for: .normal)
        Week1Pressed()
        
    }
    @objc func FebWeek4Pressed() {
        animateButton.setTitle("Feb Week 4", for: .normal)
        Week1Pressed()
    }
    
    
    
    @objc func MarWeek1Pressed() {
        animateButton.setTitle("Mar Week 1", for: .normal)
        Week1Pressed()
        
    }
    @objc func MarWeek2Pressed() {
        animateButton.setTitle("Mar Week 2", for: .normal)
        Week1Pressed()
        
    }
    @objc func MarWeek3Pressed() {
        animateButton.setTitle("Mar Week 3", for: .normal)
        Week1Pressed()
        
    }
    @objc func MarWeek4Pressed() {
        animateButton.setTitle("Mar Week 4", for: .normal)
        Week1Pressed()
        
    }
    
    
    
    @objc func AprWeek1Pressed() {
        animateButton.setTitle("Apr Week 1", for: .normal)
        Week1Pressed()
        
    }
    @objc func AprWeek2Pressed() {
        animateButton.setTitle("Apr Week 2", for: .normal)
        Week1Pressed()
        
    }
    @objc func AprWeek3Pressed() {
        animateButton.setTitle("Apr Week 3", for: .normal)
        Week1Pressed()
        
    }
    @objc func AprWeek4Pressed() {
        animateButton.setTitle("Apr Week 4", for: .normal)
        Week1Pressed()
        
    }
    
    
    
    @objc func MayWeek1Pressed() {
        animateButton.setTitle("May Week 1", for: .normal)
        Week1Pressed()
        
    }
    @objc func MayWeek2Pressed() {
        animateButton.setTitle("May Week 2", for: .normal)
        Week1Pressed()
        
    }
    @objc func MayWeek3Pressed() {
        animateButton.setTitle("May Week 3", for: .normal)
        Week1Pressed()
        
    }
    @objc func MayWeek4Pressed() {
        animateButton.setTitle("May Week 4", for: .normal)
        Week1Pressed()
    }
    
    
    
    @objc func JneWeek1Pressed() {
        animateButton.setTitle("Jne Week 1", for: .normal)
        Week1Pressed()
        
    }
    @objc func JneWeek2Pressed() {
        animateButton.setTitle("Jne Week 2", for: .normal)
        Week1Pressed()
        
    }
    @objc func JneWeek3Pressed() {
        animateButton.setTitle("Jne Week 3", for: .normal)
        Week1Pressed()
        
    }
    @objc func JneWeek4Pressed() {
        animateButton.setTitle("Jne Week 4", for: .normal)
        Week1Pressed()
        
    }
    
    
    
    @objc func JlyWeek1Pressed() {
        animateButton.setTitle("Jne Week 1", for: .normal)
        Week1Pressed()
        
    }
    @objc func Jlyweek2Pressed() {
        animateButton.setTitle("Jne Week 2", for: .normal)
        Week1Pressed()
        
    }
    @objc func JlyWeek3Pressed() {
        animateButton.setTitle("Jne Week 3", for: .normal)
        Week1Pressed()
        
    }
    @objc func JlyWeek4Pressed() {
        animateButton.setTitle("Jne Week 4", for: .normal)
        Week1Pressed()
        
    }
    
    
    
    @objc func AugWeek1Pressed() {
        animateButton.setTitle("Aug Week 1", for: .normal)
        Week1Pressed()
        
    }
    @objc func AugWeek2Pressed() {
        animateButton.setTitle("Aug Week 2", for: .normal)
        Week1Pressed()
        
    }
    @objc func AugWeek3Pressed() {
        animateButton.setTitle("Aug Week 3", for: .normal)
        Week1Pressed()
        
    }
    @objc func AugWeek4Pressed() {
        animateButton.setTitle("Aug Week 4", for: .normal)
        Week1Pressed()
        
    }
    
    
    
    @objc func SepWeek1Pressed() {
        animateButton.setTitle("Sep Week 1", for: .normal)
        Week1Pressed()
        
    }
    @objc func SepWeek2Pressed() {
        animateButton.setTitle("Sep Week 2", for: .normal)
        Week1Pressed()
        
    }
    @objc func SepWeek3Pressed() {
        animateButton.setTitle("Sep Week 3", for: .normal)
        Week1Pressed()
        
    }
    @objc func SepWeek4Pressed() {
        animateButton.setTitle("Sep Week 4", for: .normal)
        
        
    }
    
    
    
    @objc func OctWeek1Pressed() {
        animateButton.setTitle("Oct Week 1", for: .normal)
        
    }
    @objc func OctWeek2Pressed() {
        animateButton.setTitle("Oct Week 2", for: .normal)
        
    }
    @objc func OctWeek3Pressed() {
        animateButton.setTitle("Oct Week 3", for: .normal)
        
    }
    @objc func OctWeek4Pressed() {
        animateButton.setTitle("Oct Week 4", for: .normal)
        
    }
    
    
    
    @objc func NovWeek1Pressed() {
        animateButton.setTitle("Nov Week 1", for: .normal)
        
    }
    @objc func NovWeek2Pressed() {
        animateButton.setTitle("Nov Week 2", for: .normal)
        
    }
    @objc func NovWeek3Pressed() {
        animateButton.setTitle("Nov Week 3", for: .normal)
        
    }
    @objc func NovWeek4Pressed() {
        animateButton.setTitle("Nov Week 4", for: .normal)
        
    }
    
    
    
    @objc func DecWeek1Pressed() {
        animateButton.setTitle("Dec Week 1", for: .normal)
        
    }
    @objc func DecWeek2Pressed() {
        animateButton.setTitle("Dec Week 2", for: .normal)
        
    }
    @objc func DecWeek3Pressed() {
        animateButton.setTitle("Dec Week 3", for: .normal)
        
    }
    @objc func DecWeek4Pressed() {
        animateButton.setTitle("Dec Week 4", for: .normal)
        
    }
    
    @objc func ShowMarchWeek() {
        
    }
    
    @objc func ShowAprilWeek() {
        
    }
    
    @objc func ShowMayWeek() {
        
    }
    
    @objc func ShowJuneWeek() {
        
    }
    
    @objc func ShowJulyWeek() {
        
    }
    
    @objc func ShowAugustWeek() {
        
    }
    
    @objc func ShowSeptemberWeek() {
        
    }
    
    @objc func ShowOctoberWeek() {
        
    }
    
    @objc func ShowNovemberWeek() {
        
    }
    
    @objc func ShowDecemberWeek() {
        
    }
    @objc func RotateDec2Jan() {
        //Change December back to January
    }
    func setWeek1ButtonConstraints() {
        Week1Button.translatesAutoresizingMaskIntoConstraints = false
        Week1Button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        Week1Button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        Week1Button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        Week1Button.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        
    }
    
    func setWeek2ButtonConstraints() {
        Week2Button.translatesAutoresizingMaskIntoConstraints = false
        Week2Button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        Week2Button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        Week2Button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        Week2Button.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        
    }
    
    func setWeek3ButtonConstraints() {
        Week3Button.translatesAutoresizingMaskIntoConstraints = false
        Week3Button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        Week3Button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        Week3Button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        Week3Button.topAnchor.constraint(equalTo: view.topAnchor, constant: 350).isActive = true
        
    }
    
    func setWeek4ButtonConstraints() {
        Week4Button.translatesAutoresizingMaskIntoConstraints = false
        Week4Button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        Week4Button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        Week4Button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        Week4Button.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        
    }
    
    @objc func Week1Pressed() {
        watchButton.setTitle("Calendar Menu", for: .normal)
        animateButton.setTitle("Jan Week 1", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Dec2Jan), for: .touchUpInside)
        animateButton.addTarget(self, action:
            #selector(ShowJanWeek1), for: .touchUpInside)
        Week1Button.isHidden = true
        Week2Button.isHidden = true
        Week3Button.isHidden = true
        Week4Button.isHidden = true
        Week3Button.isHidden = false
        Week4Button.isHidden = false
        Week3Button.setTitle("Good", for: .normal)
        Week4Button.setTitle("Not too great", for: .normal)
        view.addSubview(label)
        label.center = CGPoint(x: 180, y:285)
        label.textAlignment = .center
        label.text = "How was your week"
        Week3Button.addTarget(self, action:
            #selector(Questions2a), for: .touchUpInside)
        Week4Button.addTarget(self, action:
            #selector(Questions2b), for: .touchUpInside)
        
    }
    
    @objc func Week2Pressed() {
        watchButton.setTitle("Calendar Menu", for: .normal)
        animateButton.setTitle("Jan Week 2", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Dec2Jan), for: .touchUpInside)
        animateButton.addTarget(self, action:
            #selector(ShowJanWeek1), for: .touchUpInside)
        Week1Button.isHidden = true
        Week2Button.isHidden = true
        Week3Button.isHidden = true
        Week4Button.isHidden = true
        view.addSubview(label)
        
        label.center = CGPoint(x: 180, y:285)
        label.textAlignment = .center
        label.text = "How was your week"
        
    }
    
    @objc func Week3Pressed() {
        watchButton.setTitle("Calendar Menu", for: .normal)
        animateButton.setTitle("Jan Week 3", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Dec2Jan), for: .touchUpInside)
        animateButton.addTarget(self, action:
            #selector(ShowJanWeek1), for: .touchUpInside)
        Week1Button.isHidden = true
        Week2Button.isHidden = true
        Week3Button.isHidden = true
        Week4Button.isHidden = true
        view.addSubview(label)
        
        label.center = CGPoint(x: 180, y:285)
        label.textAlignment = .center
        label.text = "How was your week"
        
    }
    
    @objc func Week4Pressed() {
        watchButton.setTitle("Calendar Menu", for: .normal)
        animateButton.setTitle("Jan Week 4", for: .normal)
        watchButton.addTarget(self, action:
            #selector(Dec2Jan), for: .touchUpInside)
        animateButton.addTarget(self, action:
            #selector(ShowJanWeek1), for: .touchUpInside)
        Week1Button.isHidden = true
        Week2Button.isHidden = true
        Week3Button.isHidden = true
        Week4Button.isHidden = true
        view.addSubview(label)
        
        label.center = CGPoint(x: 180, y:285)
        label.textAlignment = .center
        label.text = "How was your week"
        
    }
    
    func ShowIntroScreen() {
        
    }
    
    @objc func Questions2a() {
        label.text = "You had a good week"
        Week3Button.addTarget(self, action:
            #selector(Questions2a), for: .touchUpInside)
        NextQuestion()
        
        
    }
    @objc func Questions2b() {
        label.text = "You had a off week"
        NextQuestion()
        
        
    }
    
    func setupQuestions1Constraints() {
        
    }
    
    @objc func Answers1() {
        view.addSubview(AnswerButton)
        Answer1.isHidden = false
        Answer1.setTitle("Tap to Begin Playground", for: .normal)
        Answer1.setTitleColor(.white, for: .normal)
        Answer1.backgroundColor    = .blue
        Answer1.layer.cornerRadius = 11
        watchButton.addTarget(self, action: #selector(RotateDec2Jan), for: .touchUpInside)
        // setupAnswersConstraints()
        
    }
    func setupAnswersConstraints() {
        Answer1.translatesAutoresizingMaskIntoConstraints = false
        Answer1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        Answer1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        Answer1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        Answer1.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        
    }
    
    @objc func NextQuestion() {
        label.isHidden = true
        view.addSubview(label2)
        
        label2.center = CGPoint(x: 180, y:285)
        label2.textAlignment = .center
        label2.text = "Did you take your meds?"
        Week3Button.isHidden = false
        Week4Button.isHidden = false
        Week3Button.setTitle("Yes", for: .normal)
        Week4Button.setTitle("No", for: .normal)
        view.addSubview(label)
        Week3Button.addTarget(self, action:
            #selector(NextQuestion2), for: .touchUpInside)
        Week4Button.addTarget(self, action:
            #selector(NextQuestion2), for: .touchUpInside)
        
    }
    
    @objc func NextQuestion2() {
        label2.isHidden = true
        view.addSubview(label3)
        label3.isHidden = false
        label3.center = CGPoint(x: 180, y:285)
        label3.textAlignment = .center
        label3.text = "Did you take vitamins?"
        Week3Button.isHidden = false
        Week4Button.isHidden = false
        Week3Button.setTitle("Yes", for: .normal)
        Week4Button.setTitle("No", for: .normal)
        Week3Button.addTarget(self, action:
            #selector(FinalQuestion1), for: .touchUpInside)
        Week4Button.addTarget(self, action:
            #selector(FinalQuestion1), for: .touchUpInside)
        
    }
    
    @objc func FinalQuestion1() {
        view.addSubview(label4)
        label3.isHidden = true
        label4.center = CGPoint(x: 180, y:285)
        label4.textAlignment = .center
        label4.text = "Did you drink enough?"
        Week3Button.isHidden = false
        Week4Button.isHidden = false
        Week3Button.setTitle("Yes", for: .normal)
        Week4Button.setTitle("No", for: .normal)
        Week3Button.addTarget(self, action:
            #selector(Dec2Jan), for: .touchUpInside)
        Week4Button.addTarget(self, action:
            #selector(DecWeek1Pressed), for: .touchUpInside)
        
    }
}

let vc = MyViewController()
//For iPhone X and Xs:
vc.preferredContentSize = CGSize(width: 375, height: 812)
PlaygroundPage.current.liveView = vc

