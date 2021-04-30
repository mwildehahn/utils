namespace Infinityloop\Tests\Utils;

/**
 * @method \Infinityloop\Tests\Utils\NamedClass current() : object
 * @method \Infinityloop\Tests\Utils\NamedClass offsetGet($offset) : object
 */
final class NamedClassSet extends \Infinityloop\Utils\ObjectMap
{
    protected const INNER_CLASS = NamedClass::class;
}
