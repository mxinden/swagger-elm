module Unit.Swagger.Decode exposing (..)

import Swagger.Decode exposing (decodeAdditionalPropertiesType)
import Test exposing (Test, describe, test)
import Json.Decode exposing (decodeString)
import Expect

all : Test
all = describe "Decode"
      [ describe "decodeAdditionalPropertiesType"
            [ test "parses additional types object" <|
                  always <|
                  Expect.equal (Ok "string") <|
                  decodeString decodeAdditionalPropertiesType "{ \"type\" : \"string\"}"
            ]
      ]
