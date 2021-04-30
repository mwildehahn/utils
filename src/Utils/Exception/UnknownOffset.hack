namespace Infinityloop\Utils\Exception;

final class UnknownOffset extends \Exception
{
    public const MESSAGE = 'Item with offset "%s" does not exist.';

    public function __construct(string|int $offset)
    {
        parent::__construct(\sprintf(self::MESSAGE, $offset));
    }
}
