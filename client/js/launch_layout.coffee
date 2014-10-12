
# Template.dataTable.rendered = ->
#   console.log 'rendered'
#   Meteor.subscribe('settings')
#   Meteor.subscribe('searchs')
#   Deps.autorun () ->
#     eventsRemove()
#     node = document.createElement("tbody")
#     document.getElementsByTagName("table")[0].appendChild node
#     tbodyAtt =  document.createAttribute("id")
#     tbodyAtt.value = "tbody"
#     document.getElementsByTagName("tbody")[0].setAttributeNode tbodyAtt
#     console.log 'autorun working on load ?'
#     # makelist(value)
#     newArray = []
#     console.log 'new Array before' + newArray
#     console.log 'real'
#     # console.log $("#tbody")
#     $("#tbody").remove()
#     node = document.createElement("tbody")
#     document.getElementsByTagName("table")[0].appendChild node
#     tbodyAtt =  document.createAttribute("id")
#     tbodyAtt.value = "tbody"
#     document.getElementsByTagName("tbody")[0].setAttributeNode tbodyAtt
#     console.log Searchs.find({}).fetch()
#     array = Searchs.find({}).fetch()
#     for key, object of array
#       console.log object
#       newArray.push object
#     console.log 'new Array after' + newArray
#     makelist(newArray)
#     console.log 'after makelist'
#     # eventsRemove()

# Template.dataTable.events
#   "click button#add-row" : (e, t) ->
#     settObject = []
#     array = Searchs.find({}).fetch()
#     for key, object of array
#       console.log 'clickeeeed'
#       console.log 'insert setting ?'
#       console.log "click"
#       console.log object._id
#       hours = $("#hours-#{object._id}").val()
#       minutes = $("#minutes-#{object._id}").val()
#       searchsId = object._id
#       settObject.push settingObject(hours, minutes, searchsId)
#     console.log Settings.insert(info: settObject)
#     $("button#add-row").html("LAUNCHED");

# eventsRemove = () ->
#   array = Searchs.find({}).fetch()
#   for key, object of array
#     $("#del-#{object._id}").click ->
#       console.log 'click remove'
#       $( "row-#{object._id}" ).remove()
#       console.log Searchs.remove({_id: object._id})
# makelist = (array) ->

#   # Establish the array which acts as a data source for the list
#   listData = array

#   numberOfListItems = listData.length
#   console.log 'one id' + ' ' + listData[0]._id
#   tableRef = document.getElementById("DataTables_Table_8").getElementsByTagName("tbody")[0]

#   # Insert a row in the table at row index 0
#   attRow = document.createAttribute("id")
#   attRow.value = "row-#{listData[0]._id}"
#   newRow = tableRef.insertRow(tableRef.rows.length)
#   newRow.setAttributeNode attRow

#   # Insert a cell in the row at index 0, 1, ..
#   newCell = newRow.insertCell(0)
#   newCell1 = newRow.insertCell(1)
#   newCell2 = newRow.insertCell(2)
#   newCell3 = newRow.insertCell(3)


#   newCell.innerHTML = listData[0].NW

#   newText1 = document.createElement("input")
#   newText2 = document.createElement("input")
#   newText3 = document.createElement("button")
#   newCell1.appendChild newText1
#   newCell2.appendChild newText2
#   newCell3.appendChild newText3

#   hrs =  document.createAttribute("id")
#   hrs.value = "hours-#{listData[0]._id}"

#   document.getElementsByTagName("input")[0].setAttributeNode hrs

#   mins =  document.createAttribute("id")
#   mins.value = "minutes-#{listData[0]._id}"

#   document.getElementsByTagName("input")[1].setAttributeNode mins

#   dell = document.createAttribute("id")
#   dell.value = "del-#{listData[0]._id}"
#   document.getElementsByTagName("button")[1].setAttributeNode dell

#   value = listData
#   for i in [1...numberOfListItems]
#     console.log 'one by one ids' + ' ' + value[i]._id
#     tableRef = document.getElementById("DataTables_Table_8").getElementsByTagName("tbody")[0]

#     # Insert a row in the table at row index 0
#     attRow = document.createAttribute("id")
#     attRow.value = "row-#{value[i]._id}"
#     newRow = tableRef.insertRow(tableRef.rows.length)
#     newRow.setAttributeNode attRow

#     # Insert a cell in the row at index 0, 1, ..
#     newCell = newRow.insertCell(0)
#     newCell1 = newRow.insertCell(1)
#     newCell2 = newRow.insertCell(2)
#     newCell3 = newRow.insertCell(3)


#     newCell.innerHTML = value[i].NW

#     newText1 = document.createElement("input")
#     newText2 = document.createElement("input")
#     newText3 = document.createElement("button")
#     newCell1.appendChild newText1
#     newCell2.appendChild newText2
#     newCell3.appendChild newText3

#     hrs =  document.createAttribute("id")
#     hrs.value = "hours-#{value[i]._id}"

#     document.getElementsByTagName("input")[i + i].setAttributeNode hrs

#     mins =  document.createAttribute("id")
#     mins.value = "minutes-#{value[i]._id}"
#     document.getElementsByTagName("input")[1 + i + i].setAttributeNode mins

#     dell = document.createAttribute("id")
#     dell.value = "del-#{value[i]._id}"
#     document.getElementsByTagName("button")[i + 1].setAttributeNode dell



# observeSearchs = () ->
#   console.log 'observing...'
#   count = 0
#   query = Searchs.find({})
#   handle = query.observeChanges(
#     added: (id, user) ->
#       count++
#       console.log count
#       # bigFunction()
#       return

#     removed: ->
#       count--
#       console.log "Lost one. We're now down to " + count + " admins."
#       return
#   )

# observeSearchs()
