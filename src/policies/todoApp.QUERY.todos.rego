package todoApp.GET.todos

import future.keywords.in
import input.resource
import input.user

default allowed = false

allowed {
  data.todos[_].ownerID == user.key
}

allowed {
  user.properties.roles[_] == "evil_genius"
}
