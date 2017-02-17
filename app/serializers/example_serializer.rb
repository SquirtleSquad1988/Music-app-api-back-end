# frozen_string_literal: true
class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable

  def editable
    scope == object.user
    # scope is current user, when im rendering an example if the current user is logged on the editable is true, otherwise false
    # this defines what comes out in the json
    # JSON will contain editable attribute, will be true or false
    # object is the data, mode, being serialized, source of the data for the json
    # serializer determines which JSON is returned
    # object is model, object.user is who created specific instance of model
    # scope will be the value of the current user
    # if a token isnt provided, scope will be nil
    # A way of identifing ownership of data
  end
end
