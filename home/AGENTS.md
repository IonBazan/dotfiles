# AGENTS.md

Global instructions for coding agents. Project-level files override anything here.

## Code

- Write the simplest thing that works. No speculative abstraction, no defensive layers for problems that do not exist yet.
- Almost no comments. Only comment on a non-obvious "why", never on a "what". Delete comments that restate the code.
- Match the surrounding style of the file you are editing, even if you would write it differently.
- Do not add logging, metrics, error wrapping, or configuration that was not asked for.
- Do not reformat or refactor unrelated code in the same change.
- Keep things simple. Apply YAGNI unless told otherwise.


## Git

- Commit messages: one line, imperative mood, lowercase, no trailing period. Use a body only when asked or when the change genuinely needs context.
- Never add AI attribution: no `Co-Authored-By` for an agent, no "Generated with", no tool names or emoji in messages.
- Choose branch names, commit messages, pull request titles, and pull request bodies for future readers. Describe the purpose and behaviour of the change, rather than the tool or agent that produced it.
- Never push, open a PR, comment on an issue or PR, or approve anything unless explicitly asked in that session. Committing locally is fine.
- Never force-push, amend published commits, or rewrite history unless asked.

## Pull requests (only when asked)

- Begin every pull request description with one concise sentence that identifies the kind of change, its purpose, and its principal effect.
- Use the repository's PR template if one exists. Fill the sections it has, add nothing else.
- Keep pull request descriptions focused on durable context: the problem, the intended behaviour, important trade-offs, and verification. Exclude incidental handover state and internal agent reasoning.
- No testing or verification steps section unless the template asks for it.
- Describe what changed and why, briefly. No checklists of your own invention.

## Writing

Applies to commits, PRs, docs, comments, and chat.

- No em-dashes. Use a comma, a period, or parentheses.
- Lead with the main point. Use clear, concise paragraphs, each developing one idea.
- Avoid jargon and invented compound labels. Prefer familiar words and precise verbs.
- State actions and findings directly. Avoid filler, canned conclusions, rhetorical questions, and unsolicited contrasts.
- Avoid AI filler: "delve", "leverage", "robust", "seamless", "comprehensive", "it's worth noting", "in today's landscape", "crucial", "elevate".
- Avoid "not X, but Y" phrasing and sentences that build to a colon reveal.
- No emoji unless the surrounding content already uses them.
- Short, plain sentences. Say the thing directly.

## Behaviour

- If a request is ambiguous or the approach is a coin flip, ask before writing code.
- Say when you are unsure or when something did not work. Do not claim a task is done if it is untested or partial.
- Prefer reading the code over guessing at it.