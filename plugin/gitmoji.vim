let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! s:gitmoji(line)
  call feedkeys("i")
  call feedkeys(strcharpart(a:line, 0, 1))
  call feedkeys(" ")
  call feedkeys("\<Esc>")
endfunction

let s:list = [
 \ "🎨 Improve structure / format of the code.",
 \ "⚡️ Improve performance.",
 \ "🔥 Remove code or files.",
 \ "🐛 Fix a bug.",
 \ "🚑️ Critical hotfix.",
 \ "✨ Introduce new features.",
 \ "📝 Add or update documentation.",
 \ "🚀 Deploy stuff.",
 \ "💄 Add or update the UI and style files.",
 \ "🎉 Begin a project.",
 \ "✅ Add, update, or pass tests.",
 \ "🔒️ Fix security issues.",
 \ "🔖 Release / Version tags.",
 \ "🚨 Fix compiler / linter warnings.",
 \ "🚧 Work in progress.",
 \ "💚 Fix CI Build.",
 \ "⬇️ Downgrade dependencies.",
 \ "⬆️ Upgrade dependencies.",
 \ "📌 Pin dependencies to specific versions.",
 \ "👷 Add or update CI build system.",
 \ "📈 Add or update analytics or track code.",
 \ "♻️ Refactor code.",
 \ "➕ Add a dependency.",
 \ "➖ Remove a dependency.",
 \ "🔧 Add or update configuration files.",
 \ "🔨 Add or update development scripts.",
 \ "🌐 Internationalization and localization.",
 \ "✏️ Fix typos.",
 \ "💩 Write bad code that needs to be improved.",
 \ "⏪️ Revert changes.",
 \ "🔀 Merge branches.",
 \ "📦️ Add or update compiled files or packages.",
 \ "👽️ Update code due to external API changes.",
 \ "🚚 Move or rename resources (e.g.: files, paths, routes).",
 \ "📄 Add or update license.",
 \ "💥 Introduce breaking changes.",
 \ "🍱 Add or update assets.",
 \ "♿️ Improve accessibility.",
 \ "💡 Add or update comments in source code.",
 \ "🍻 Write code drunkenly.",
 \ "💬 Add or update text and literals.",
 \ "🗃️ Perform database related changes.",
 \ "🔊 Add or update logs.",
 \ "🔇 Remove logs.",
 \ "👥 Add or update contributor(s).",
 \ "🚸 Improve user experience / usability.",
 \ "🏗️ Make architectural changes.",
 \ "📱 Work on responsive design.",
 \ "🤡 Mock things.",
 \ "🥚 Add or update an easter egg.",
 \ "🙈 Add or update a .gitignore file.",
 \ "📸 Add or update snapshots.",
 \ "⚗️ Perform experiments.",
 \ "🔍️ Improve SEO.",
 \ "🏷️ Add or update types.",
 \ "🌱 Add or update seed files.",
 \ "🚩 Add, update, or remove feature flags.",
 \ "🥅 Catch errors.",
 \ "💫 Add or update animations and transitions.",
 \ "🗑️ Deprecate code that needs to be cleaned up.",
 \ "🛂 Work on code related to authorization, roles and permissions.",
 \ "🩹 Simple fix for a non-critical issue.",
 \ "🧐 Data exploration/inspection.",
 \ "⚰️ Remove dead code.",
 \ "🧪 Add a failing test.",
 \ "👔 Add or update business logic",
 \ "🩺 Add or update healthcheck.",
 \ "🧱 Infrastructure related changes.",
 \ "🧑‍💻 Improve developer experience",
 \ ]


command! -bang -nargs=0 Gitmoji
  \ call fzf#run(fzf#wrap({
  \     'source': s:list,
  \     'options': ["--prompt", "> "],
  \     'sink': function('s:gitmoji')
  \   }))
