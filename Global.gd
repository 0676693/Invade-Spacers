extends Node

var bulletInstanceCount = 0 # Keeps track of time
var enemyBulletInstanceCount = 0

var scoringInformation = {
	"currentScore": 0,
	"currentPlayer": "User",
	"highScore": 0,
	"highScorePlayersName" : "Winner"
}

var automaticFiring = false
var playerSize = Vector2(1,1)
