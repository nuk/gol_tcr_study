TEST="rspec"
COMMIT="git add . && git commit --amend -m 'TCR STEP'"
REVERT="git clean -fd && git reset --hard"

(eval $TEST) && (eval $COMMIT) || (eval $REVERT)
