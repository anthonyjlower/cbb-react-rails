class PlayerSerializer
  include JSONAPI::Serializer
  attributes :name,
             :rank,
             :position,
             :is_perimiter?,
             :grade,
             :is_first_round?

end
