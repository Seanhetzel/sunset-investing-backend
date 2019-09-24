class HoldingSerializer < ActiveModel::Serializer
    def initialize(holding_object)
        @holding = holding_object
    end

    def to_serialized_json
        options = {
            except: [:updated_at, :created_at]
        }
        @holding.to_json(options)
    end
end
