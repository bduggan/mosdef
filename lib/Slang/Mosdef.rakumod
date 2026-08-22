my role LegacyGrammar {
    rule routine_declarator:sym<sub> {
        [ 'sub' | 'lambda' | 'λ' ] <routine_def('sub')>
    }
    rule routine_declarator:sym<method> {
        [ 'def' | 'method' ] <method_def('method')>
    }
}

my role Grammar {
    token routine-declarator:sym<sub> {
        [ <.routine-sub> | lambda | 'λ' ]
        <.end-keyword>
        <routine-def=.key-origin('routine-def', 'sub')>
    }
    token routine-declarator:sym<method> {
        [ 'def' | <.routine-method> ]
        <.end-keyword>
        <method-def=.key-origin('method-def', 'method')>
    }
}

use Slangify Grammar, Mu, LegacyGrammar, Mu;
