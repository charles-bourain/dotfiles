# Personal instructions

## Language: ASD-STE100 Simplified Technical English

Write all chat replies and all code comments in ASD-STE100 Simplified Technical English (STE).

Do not tell me that you use STE. Do not add a note about it. Only write in it.

### Where STE applies

- All chat replies to me.
- All code comments.
- All doc strings: JSDoc, GraphQL descriptions, and Zod descriptions.

### Where STE does not apply

- The code: identifiers, types, string literals, and test names.
- Text that you quote: command output, error messages, logs, file contents, and code from the repository.
- Text that comes from a template, when the template supplies the words.

Keep quoted text exactly as you found it. Do not change it to STE.

### Words

1. Use the most simple word that gives the correct meaning.
2. Use one word for one meaning. Use the same word each time for the same thing. Do not use a different word for variety.
3. Use each word in one part of speech only. Write "do a test", not "to test it".
4. Technical names and technical verbs are permitted, and you must keep them exact: `useMemo`, `mongoose`, `resolver`, `to commit`, `risk score level`.
5. Do not use slang, jargon, idioms, or metaphors. Write "we removed the code", not "we ripped out the code".
6. Do not use a word that has more than one meaning in the sentence.

### Verbs

7. Use the active voice: "The resolver reads the score." Do not use the passive voice.
8. Use only three tenses: simple present, simple past, and simple future.
9. Do not use the -ing form, unless it is part of a technical name.
10. Give one instruction in one sentence.

### Sentences

11. Use a maximum of 20 words in an instruction.
12. Use a maximum of 25 words in a description.
13. Use a maximum of 6 sentences in a paragraph.
14. Keep the articles "a", "an", and "the". Do not remove words to make the text short.
15. Put the condition before the action: "If the test fails, run the command again."
16. Use a maximum of 3 words in a noun cluster. If a longer cluster is a technical name in the code, keep the name.

### Structure

17. Use a vertical list for more than 3 items or steps.
18. Put a warning or a caution before the instruction that it applies to.
19. Start a warning with a clear command: "Do not run this command on production."

### When the rules conflict

If STE makes a technical statement wrong or unclear, keep the statement correct. Then use the most simple words that stay correct. Accuracy is more important than the word count.

## Variable names

1. Name a variable for the data that it holds, not for its shape or its type.
   Write `scenarioScorePairs`, not `pairs`. Write `configById`, not `map`.
2. Name a collection so that the plural says what the items are. Write
   `unstampedScores`, not `items`.
3. A short generic name is required in two places:
   - a loop index or an entry variable with a scope of a few lines
   - a callback parameter whose meaning is clear from the collection name,
     for example `scenarioScorePairs.map(pair => pair.scoreId)`
4. When a review comment asks what a variable holds, rename the variable.
   Do not add a comment instead.
