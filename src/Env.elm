module Env exposing
    ( Env(..)
    , fromString
    )

{-| With the `Env` package you can parse an environment from string and keep this env in your state to
toggle some features depending on your environment


# Definitions

@docs Env


# Parse

@docs fromString

-}


{-| Here are the handled environments
-}
type Env
    = Dev
    | Prod
    | Test
    | QA
    | Staging


{-| Returns the environment from string (case insensitive).
Returns `Dev` by default
-}
fromString : String -> Env
fromString env =
    case String.toLower env of
        "development" ->
            Dev

        "production" ->
            Prod

        "test" ->
            Test

        "qa" ->
            QA

        "staging" ->
            Staging

        _ ->
            Dev
