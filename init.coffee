exports.configure = [
  {
    type: 'input',
    name: 'name',
    message: "Your project's name"
  }, {
    type: 'input',
    name: 'description',
    message: "A brief description of your project"
  }
]

exports.after = (utils, config) ->
  utils.target.exec 'git init'
    .then -> utils.target.exec 'git add .'
    .then -> utils.target.exec 'git commit -m "Initialize roots"'
    .cath -> console.error
