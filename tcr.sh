TEST="rspec"
COMMIT="git add . && git commit -am 'TCR STEP'"
REVERT="git clean -fd && git reset --hard"

(eval $TEST) && (eval $COMMIT) || (eval $REVERT)
