alarm[1] -= 1;

// Check if the alarm has reached 0
if (alarm[1] <= 0)
{
    // Game over condition when the countdown timer reaches 0
    room = LoseByVictims;
}
