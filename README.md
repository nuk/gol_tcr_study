Studying how TCR works
for dojo session, see dojo branch

### Observations

After a few successful commits, make sure to group them into a single commit
with some contextual description/message before __push__ into the __remote branch__:

1. git rebase -i <last commit without 'TCR step'>
2. `pick` the first one and `stash` the others
3. Save :D
4. Remove the 'TCR step' descriptions and add a contextual one
5. Save :D
6. Push!
